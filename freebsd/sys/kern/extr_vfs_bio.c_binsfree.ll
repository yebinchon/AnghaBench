; ModuleID = '/home/carl/AnghaBench/freebsd/sys/kern/extr_vfs_bio.c_binsfree.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/kern/extr_vfs_bio.c_binsfree.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.buf = type { i32, i32 }
%struct.bufdomain = type { i64, %struct.bufqueue, %struct.bufqueue*, %struct.bufqueue* }
%struct.bufqueue = type { i32 }

@QUEUE_CLEAN = common dso_local global i32 0, align 4
@QUEUE_DIRTY = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [28 x i8] c"binsfree: Invalid qindex %d\00", align 1
@B_REMFREE = common dso_local global i32 0, align 4
@B_REUSE = common dso_local global i32 0, align 4
@cpuid = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.buf*, i32)* @binsfree to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @binsfree(%struct.buf* %0, i32 %1) #0 {
  %3 = alloca %struct.buf*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.bufdomain*, align 8
  %6 = alloca %struct.bufqueue*, align 8
  store %struct.buf* %0, %struct.buf** %3, align 8
  store i32 %1, i32* %4, align 4
  %7 = load i32, i32* %4, align 4
  %8 = load i32, i32* @QUEUE_CLEAN, align 4
  %9 = icmp eq i32 %7, %8
  br i1 %9, label %14, label %10

10:                                               ; preds = %2
  %11 = load i32, i32* %4, align 4
  %12 = load i32, i32* @QUEUE_DIRTY, align 4
  %13 = icmp eq i32 %11, %12
  br label %14

14:                                               ; preds = %10, %2
  %15 = phi i1 [ true, %2 ], [ %13, %10 ]
  %16 = zext i1 %15 to i32
  %17 = load i32, i32* %4, align 4
  %18 = sext i32 %17 to i64
  %19 = inttoptr i64 %18 to i8*
  %20 = call i32 @KASSERT(i32 %16, i8* %19)
  %21 = load %struct.buf*, %struct.buf** %3, align 8
  %22 = call i32 @BUF_ASSERT_XLOCKED(%struct.buf* %21)
  %23 = load %struct.buf*, %struct.buf** %3, align 8
  %24 = getelementptr inbounds %struct.buf, %struct.buf* %23, i32 0, i32 0
  %25 = load i32, i32* %24, align 4
  %26 = load i32, i32* @B_REMFREE, align 4
  %27 = and i32 %25, %26
  %28 = icmp ne i32 %27, 0
  br i1 %28, label %29, label %57

29:                                               ; preds = %14
  %30 = load %struct.buf*, %struct.buf** %3, align 8
  %31 = getelementptr inbounds %struct.buf, %struct.buf* %30, i32 0, i32 1
  %32 = load i32, i32* %31, align 4
  %33 = load i32, i32* %4, align 4
  %34 = icmp eq i32 %32, %33
  br i1 %34, label %35, label %49

35:                                               ; preds = %29
  %36 = load i32, i32* @B_REUSE, align 4
  %37 = load %struct.buf*, %struct.buf** %3, align 8
  %38 = getelementptr inbounds %struct.buf, %struct.buf* %37, i32 0, i32 0
  %39 = load i32, i32* %38, align 4
  %40 = or i32 %39, %36
  store i32 %40, i32* %38, align 4
  %41 = load i32, i32* @B_REMFREE, align 4
  %42 = xor i32 %41, -1
  %43 = load %struct.buf*, %struct.buf** %3, align 8
  %44 = getelementptr inbounds %struct.buf, %struct.buf* %43, i32 0, i32 0
  %45 = load i32, i32* %44, align 4
  %46 = and i32 %45, %42
  store i32 %46, i32* %44, align 4
  %47 = load %struct.buf*, %struct.buf** %3, align 8
  %48 = call i32 @BUF_UNLOCK(%struct.buf* %47)
  br label %87

49:                                               ; preds = %29
  %50 = load %struct.buf*, %struct.buf** %3, align 8
  %51 = call %struct.bufqueue* @bufqueue_acquire(%struct.buf* %50)
  store %struct.bufqueue* %51, %struct.bufqueue** %6, align 8
  %52 = load %struct.bufqueue*, %struct.bufqueue** %6, align 8
  %53 = load %struct.buf*, %struct.buf** %3, align 8
  %54 = call i32 @bq_remove(%struct.bufqueue* %52, %struct.buf* %53)
  %55 = load %struct.bufqueue*, %struct.bufqueue** %6, align 8
  %56 = call i32 @BQ_UNLOCK(%struct.bufqueue* %55)
  br label %57

57:                                               ; preds = %49, %14
  %58 = load %struct.buf*, %struct.buf** %3, align 8
  %59 = call %struct.bufdomain* @bufdomain(%struct.buf* %58)
  store %struct.bufdomain* %59, %struct.bufdomain** %5, align 8
  %60 = load i32, i32* %4, align 4
  %61 = load i32, i32* @QUEUE_CLEAN, align 4
  %62 = icmp eq i32 %60, %61
  br i1 %62, label %63, label %80

63:                                               ; preds = %57
  %64 = load %struct.bufdomain*, %struct.bufdomain** %5, align 8
  %65 = getelementptr inbounds %struct.bufdomain, %struct.bufdomain* %64, i32 0, i32 0
  %66 = load i64, i64* %65, align 8
  %67 = icmp ne i64 %66, 0
  br i1 %67, label %68, label %75

68:                                               ; preds = %63
  %69 = load %struct.bufdomain*, %struct.bufdomain** %5, align 8
  %70 = getelementptr inbounds %struct.bufdomain, %struct.bufdomain* %69, i32 0, i32 3
  %71 = load %struct.bufqueue*, %struct.bufqueue** %70, align 8
  %72 = load i32, i32* @cpuid, align 4
  %73 = call i64 @PCPU_GET(i32 %72)
  %74 = getelementptr inbounds %struct.bufqueue, %struct.bufqueue* %71, i64 %73
  store %struct.bufqueue* %74, %struct.bufqueue** %6, align 8
  br label %79

75:                                               ; preds = %63
  %76 = load %struct.bufdomain*, %struct.bufdomain** %5, align 8
  %77 = getelementptr inbounds %struct.bufdomain, %struct.bufdomain* %76, i32 0, i32 2
  %78 = load %struct.bufqueue*, %struct.bufqueue** %77, align 8
  store %struct.bufqueue* %78, %struct.bufqueue** %6, align 8
  br label %79

79:                                               ; preds = %75, %68
  br label %83

80:                                               ; preds = %57
  %81 = load %struct.bufdomain*, %struct.bufdomain** %5, align 8
  %82 = getelementptr inbounds %struct.bufdomain, %struct.bufdomain* %81, i32 0, i32 1
  store %struct.bufqueue* %82, %struct.bufqueue** %6, align 8
  br label %83

83:                                               ; preds = %80, %79
  %84 = load %struct.bufqueue*, %struct.bufqueue** %6, align 8
  %85 = load %struct.buf*, %struct.buf** %3, align 8
  %86 = call i32 @bq_insert(%struct.bufqueue* %84, %struct.buf* %85, i32 1)
  br label %87

87:                                               ; preds = %83, %35
  ret void
}

declare dso_local i32 @KASSERT(i32, i8*) #1

declare dso_local i32 @BUF_ASSERT_XLOCKED(%struct.buf*) #1

declare dso_local i32 @BUF_UNLOCK(%struct.buf*) #1

declare dso_local %struct.bufqueue* @bufqueue_acquire(%struct.buf*) #1

declare dso_local i32 @bq_remove(%struct.bufqueue*, %struct.buf*) #1

declare dso_local i32 @BQ_UNLOCK(%struct.bufqueue*) #1

declare dso_local %struct.bufdomain* @bufdomain(%struct.buf*) #1

declare dso_local i64 @PCPU_GET(i32) #1

declare dso_local i32 @bq_insert(%struct.bufqueue*, %struct.buf*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
