; ModuleID = '/home/carl/AnghaBench/freebsd/sys/kern/extr_vfs_bio.c_buf_recycle.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/kern/extr_vfs_bio.c_buf_recycle.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.bufdomain = type { i32, %struct.bufqueue* }
%struct.bufqueue = type { i32 }
%struct.buf = type { i64, i32, i32, i64, i64 }

@bufdefragcnt = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [31 x i8] c"buf_recycle: Locks don't match\00", align 1
@b_freelist = common dso_local global i32 0, align 4
@LK_EXCLUSIVE = common dso_local global i32 0, align 4
@LK_NOWAIT = common dso_local global i32 0, align 4
@B_REUSE = common dso_local global i32 0, align 4
@BV_BKGRDINPROG = common dso_local global i32 0, align 4
@QUEUE_CLEAN = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [41 x i8] c"buf_recycle: inconsistent queue %d bp %p\00", align 1
@.str.2 = private unnamed_addr constant [52 x i8] c"getnewbuf: queue domain %d doesn't match request %d\00", align 1
@BV_BKGRDERR = common dso_local global i32 0, align 4
@B_INVAL = common dso_local global i32 0, align 4
@ENOBUFS = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.bufdomain*, i32)* @buf_recycle to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @buf_recycle(%struct.bufdomain* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.bufdomain*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.bufqueue*, align 8
  %7 = alloca %struct.buf*, align 8
  %8 = alloca %struct.buf*, align 8
  store %struct.bufdomain* %0, %struct.bufdomain** %4, align 8
  store i32 %1, i32* %5, align 4
  %9 = load i32, i32* %5, align 4
  %10 = icmp ne i32 %9, 0
  br i1 %10, label %11, label %14

11:                                               ; preds = %2
  %12 = load i32, i32* @bufdefragcnt, align 4
  %13 = call i32 @counter_u64_add(i32 %12, i32 1)
  br label %14

14:                                               ; preds = %11, %2
  store %struct.buf* null, %struct.buf** %8, align 8
  %15 = load %struct.bufdomain*, %struct.bufdomain** %4, align 8
  %16 = getelementptr inbounds %struct.bufdomain, %struct.bufdomain* %15, i32 0, i32 1
  %17 = load %struct.bufqueue*, %struct.bufqueue** %16, align 8
  store %struct.bufqueue* %17, %struct.bufqueue** %6, align 8
  %18 = load %struct.bufqueue*, %struct.bufqueue** %6, align 8
  %19 = call i32 @BQ_LOCK(%struct.bufqueue* %18)
  %20 = load %struct.bufqueue*, %struct.bufqueue** %6, align 8
  %21 = call i64 @BQ_LOCKPTR(%struct.bufqueue* %20)
  %22 = load %struct.bufdomain*, %struct.bufdomain** %4, align 8
  %23 = call i64 @BD_LOCKPTR(%struct.bufdomain* %22)
  %24 = icmp eq i64 %21, %23
  %25 = zext i1 %24 to i32
  %26 = call i32 @KASSERT(i32 %25, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str, i64 0, i64 0))
  %27 = load %struct.bufqueue*, %struct.bufqueue** %6, align 8
  %28 = getelementptr inbounds %struct.bufqueue, %struct.bufqueue* %27, i32 0, i32 0
  %29 = call %struct.buf* @TAILQ_FIRST(i32* %28)
  store %struct.buf* %29, %struct.buf** %8, align 8
  br label %30

30:                                               ; preds = %129, %86, %60, %52, %44, %14
  %31 = load %struct.buf*, %struct.buf** %8, align 8
  store %struct.buf* %31, %struct.buf** %7, align 8
  %32 = icmp ne %struct.buf* %31, null
  br i1 %32, label %33, label %145

33:                                               ; preds = %30
  %34 = load %struct.buf*, %struct.buf** %7, align 8
  %35 = load i32, i32* @b_freelist, align 4
  %36 = call %struct.buf* @TAILQ_NEXT(%struct.buf* %34, i32 %35)
  store %struct.buf* %36, %struct.buf** %8, align 8
  %37 = load i32, i32* %5, align 4
  %38 = icmp ne i32 %37, 0
  br i1 %38, label %39, label %45

39:                                               ; preds = %33
  %40 = load %struct.buf*, %struct.buf** %7, align 8
  %41 = getelementptr inbounds %struct.buf, %struct.buf* %40, i32 0, i32 0
  %42 = load i64, i64* %41, align 8
  %43 = icmp eq i64 %42, 0
  br i1 %43, label %44, label %45

44:                                               ; preds = %39
  br label %30

45:                                               ; preds = %39, %33
  %46 = load %struct.buf*, %struct.buf** %7, align 8
  %47 = load i32, i32* @LK_EXCLUSIVE, align 4
  %48 = load i32, i32* @LK_NOWAIT, align 4
  %49 = or i32 %47, %48
  %50 = call i64 @BUF_LOCK(%struct.buf* %46, i32 %49, i32* null)
  %51 = icmp ne i64 %50, 0
  br i1 %51, label %52, label %53

52:                                               ; preds = %45
  br label %30

53:                                               ; preds = %45
  %54 = load %struct.buf*, %struct.buf** %7, align 8
  %55 = getelementptr inbounds %struct.buf, %struct.buf* %54, i32 0, i32 1
  %56 = load i32, i32* %55, align 8
  %57 = load i32, i32* @B_REUSE, align 4
  %58 = and i32 %56, %57
  %59 = icmp ne i32 %58, 0
  br i1 %59, label %60, label %79

60:                                               ; preds = %53
  %61 = load %struct.bufqueue*, %struct.bufqueue** %6, align 8
  %62 = getelementptr inbounds %struct.bufqueue, %struct.bufqueue* %61, i32 0, i32 0
  %63 = load %struct.buf*, %struct.buf** %7, align 8
  %64 = load i32, i32* @b_freelist, align 4
  %65 = call i32 @TAILQ_REMOVE(i32* %62, %struct.buf* %63, i32 %64)
  %66 = load %struct.bufqueue*, %struct.bufqueue** %6, align 8
  %67 = getelementptr inbounds %struct.bufqueue, %struct.bufqueue* %66, i32 0, i32 0
  %68 = load %struct.buf*, %struct.buf** %7, align 8
  %69 = load i32, i32* @b_freelist, align 4
  %70 = call i32 @TAILQ_INSERT_TAIL(i32* %67, %struct.buf* %68, i32 %69)
  %71 = load i32, i32* @B_REUSE, align 4
  %72 = xor i32 %71, -1
  %73 = load %struct.buf*, %struct.buf** %7, align 8
  %74 = getelementptr inbounds %struct.buf, %struct.buf* %73, i32 0, i32 1
  %75 = load i32, i32* %74, align 8
  %76 = and i32 %75, %72
  store i32 %76, i32* %74, align 8
  %77 = load %struct.buf*, %struct.buf** %7, align 8
  %78 = call i32 @BUF_UNLOCK(%struct.buf* %77)
  br label %30

79:                                               ; preds = %53
  %80 = load %struct.buf*, %struct.buf** %7, align 8
  %81 = getelementptr inbounds %struct.buf, %struct.buf* %80, i32 0, i32 2
  %82 = load i32, i32* %81, align 4
  %83 = load i32, i32* @BV_BKGRDINPROG, align 4
  %84 = and i32 %82, %83
  %85 = icmp ne i32 %84, 0
  br i1 %85, label %86, label %89

86:                                               ; preds = %79
  %87 = load %struct.buf*, %struct.buf** %7, align 8
  %88 = call i32 @BUF_UNLOCK(%struct.buf* %87)
  br label %30

89:                                               ; preds = %79
  %90 = load %struct.buf*, %struct.buf** %7, align 8
  %91 = getelementptr inbounds %struct.buf, %struct.buf* %90, i32 0, i32 3
  %92 = load i64, i64* %91, align 8
  %93 = load i64, i64* @QUEUE_CLEAN, align 8
  %94 = icmp eq i64 %92, %93
  %95 = zext i1 %94 to i32
  %96 = load %struct.buf*, %struct.buf** %7, align 8
  %97 = getelementptr inbounds %struct.buf, %struct.buf* %96, i32 0, i32 3
  %98 = load i64, i64* %97, align 8
  %99 = load %struct.buf*, %struct.buf** %7, align 8
  %100 = bitcast %struct.buf* %99 to i8*
  %101 = call i32 @KASSERT(i32 %95, i8* %100)
  %102 = load %struct.buf*, %struct.buf** %7, align 8
  %103 = getelementptr inbounds %struct.buf, %struct.buf* %102, i32 0, i32 4
  %104 = load i64, i64* %103, align 8
  %105 = load %struct.bufdomain*, %struct.bufdomain** %4, align 8
  %106 = call i64 @BD_DOMAIN(%struct.bufdomain* %105)
  %107 = icmp eq i64 %104, %106
  %108 = zext i1 %107 to i32
  %109 = load %struct.buf*, %struct.buf** %7, align 8
  %110 = getelementptr inbounds %struct.buf, %struct.buf* %109, i32 0, i32 4
  %111 = load i64, i64* %110, align 8
  %112 = load %struct.bufdomain*, %struct.bufdomain** %4, align 8
  %113 = call i64 @BD_DOMAIN(%struct.bufdomain* %112)
  %114 = trunc i64 %113 to i32
  %115 = sext i32 %114 to i64
  %116 = inttoptr i64 %115 to i8*
  %117 = call i32 @KASSERT(i32 %108, i8* %116)
  %118 = load %struct.bufqueue*, %struct.bufqueue** %6, align 8
  %119 = load %struct.buf*, %struct.buf** %7, align 8
  %120 = call i32 @bq_remove(%struct.bufqueue* %118, %struct.buf* %119)
  %121 = load %struct.bufqueue*, %struct.bufqueue** %6, align 8
  %122 = call i32 @BQ_UNLOCK(%struct.bufqueue* %121)
  %123 = load %struct.buf*, %struct.buf** %7, align 8
  %124 = getelementptr inbounds %struct.buf, %struct.buf* %123, i32 0, i32 2
  %125 = load i32, i32* %124, align 4
  %126 = load i32, i32* @BV_BKGRDERR, align 4
  %127 = and i32 %125, %126
  %128 = icmp ne i32 %127, 0
  br i1 %128, label %129, label %137

129:                                              ; preds = %89
  %130 = load %struct.buf*, %struct.buf** %7, align 8
  %131 = call i32 @bqrelse(%struct.buf* %130)
  %132 = load %struct.bufqueue*, %struct.bufqueue** %6, align 8
  %133 = call i32 @BQ_LOCK(%struct.bufqueue* %132)
  %134 = load %struct.bufqueue*, %struct.bufqueue** %6, align 8
  %135 = getelementptr inbounds %struct.bufqueue, %struct.bufqueue* %134, i32 0, i32 0
  %136 = call %struct.buf* @TAILQ_FIRST(i32* %135)
  store %struct.buf* %136, %struct.buf** %8, align 8
  br label %30

137:                                              ; preds = %89
  %138 = load i32, i32* @B_INVAL, align 4
  %139 = load %struct.buf*, %struct.buf** %7, align 8
  %140 = getelementptr inbounds %struct.buf, %struct.buf* %139, i32 0, i32 1
  %141 = load i32, i32* %140, align 8
  %142 = or i32 %141, %138
  store i32 %142, i32* %140, align 8
  %143 = load %struct.buf*, %struct.buf** %7, align 8
  %144 = call i32 @brelse(%struct.buf* %143)
  store i32 0, i32* %3, align 4
  br label %151

145:                                              ; preds = %30
  %146 = load %struct.bufdomain*, %struct.bufdomain** %4, align 8
  %147 = getelementptr inbounds %struct.bufdomain, %struct.bufdomain* %146, i32 0, i32 0
  store i32 1, i32* %147, align 8
  %148 = load %struct.bufqueue*, %struct.bufqueue** %6, align 8
  %149 = call i32 @BQ_UNLOCK(%struct.bufqueue* %148)
  %150 = load i32, i32* @ENOBUFS, align 4
  store i32 %150, i32* %3, align 4
  br label %151

151:                                              ; preds = %145, %137
  %152 = load i32, i32* %3, align 4
  ret i32 %152
}

declare dso_local i32 @counter_u64_add(i32, i32) #1

declare dso_local i32 @BQ_LOCK(%struct.bufqueue*) #1

declare dso_local i32 @KASSERT(i32, i8*) #1

declare dso_local i64 @BQ_LOCKPTR(%struct.bufqueue*) #1

declare dso_local i64 @BD_LOCKPTR(%struct.bufdomain*) #1

declare dso_local %struct.buf* @TAILQ_FIRST(i32*) #1

declare dso_local %struct.buf* @TAILQ_NEXT(%struct.buf*, i32) #1

declare dso_local i64 @BUF_LOCK(%struct.buf*, i32, i32*) #1

declare dso_local i32 @TAILQ_REMOVE(i32*, %struct.buf*, i32) #1

declare dso_local i32 @TAILQ_INSERT_TAIL(i32*, %struct.buf*, i32) #1

declare dso_local i32 @BUF_UNLOCK(%struct.buf*) #1

declare dso_local i64 @BD_DOMAIN(%struct.bufdomain*) #1

declare dso_local i32 @bq_remove(%struct.bufqueue*, %struct.buf*) #1

declare dso_local i32 @BQ_UNLOCK(%struct.bufqueue*) #1

declare dso_local i32 @bqrelse(%struct.buf*) #1

declare dso_local i32 @brelse(%struct.buf*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
