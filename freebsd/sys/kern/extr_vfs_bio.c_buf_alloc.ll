; ModuleID = '/home/carl/AnghaBench/freebsd/sys/kern/extr_vfs_bio.c_buf_alloc.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/kern/extr_vfs_bio.c_buf_alloc.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.buf = type { i32, i32, i64, i64, i64, i32, i32*, i32*, i32*, i32, i32, i32*, i64, i64, i64, i64, i64, i64, i32, i64, i64, i32*, i64, i64, i32 }
%struct.bufdomain = type { i32, i32 }

@buf_zone = common dso_local global i32 0, align 4
@M_NOWAIT = common dso_local global i32 0, align 4
@numbufallocfails = common dso_local global i32 0, align 4
@LK_EXCLUSIVE = common dso_local global i32 0, align 4
@LK_NOWAIT = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [46 x i8] c"getnewbuf_empty: Locked buf %p on free queue.\00", align 1
@.str.1 = private unnamed_addr constant [27 x i8] c"bp: %p still has vnode %p.\00", align 1
@B_DELWRI = common dso_local global i32 0, align 4
@B_NOREUSE = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [28 x i8] c"invalid buffer %p flags %#x\00", align 1
@BX_VNCLEAN = common dso_local global i32 0, align 4
@BX_VNDIRTY = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [41 x i8] c"bp: %p still on a buffer list. xflags %X\00", align 1
@.str.4 = private unnamed_addr constant [30 x i8] c"bp: %p still has %d vm pages\0A\00", align 1
@.str.5 = private unnamed_addr constant [22 x i8] c"bp: %p still has kva\0A\00", align 1
@.str.6 = private unnamed_addr constant [27 x i8] c"bp: %p still has bufspace\0A\00", align 1
@NOOFFSET = common dso_local global i32 0, align 4
@unmapped_buf = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.buf* (%struct.bufdomain*)* @buf_alloc to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.buf* @buf_alloc(%struct.bufdomain* %0) #0 {
  %2 = alloca %struct.buf*, align 8
  %3 = alloca %struct.bufdomain*, align 8
  %4 = alloca %struct.buf*, align 8
  %5 = alloca i32, align 4
  store %struct.bufdomain* %0, %struct.bufdomain** %3, align 8
  store %struct.buf* null, %struct.buf** %4, align 8
  %6 = load %struct.bufdomain*, %struct.bufdomain** %3, align 8
  %7 = getelementptr inbounds %struct.bufdomain, %struct.bufdomain* %6, i32 0, i32 1
  %8 = call i32 @atomic_fetchadd_int(i32* %7, i32 -1)
  store i32 %8, i32* %5, align 4
  %9 = load i32, i32* %5, align 4
  %10 = icmp sgt i32 %9, 0
  br i1 %10, label %11, label %15

11:                                               ; preds = %1
  %12 = load i32, i32* @buf_zone, align 4
  %13 = load i32, i32* @M_NOWAIT, align 4
  %14 = call %struct.buf* @uma_zalloc(i32 %12, i32 %13)
  store %struct.buf* %14, %struct.buf** %4, align 8
  br label %15

15:                                               ; preds = %11, %1
  %16 = load %struct.buf*, %struct.buf** %4, align 8
  %17 = icmp eq %struct.buf* %16, null
  br i1 %17, label %18, label %26

18:                                               ; preds = %15
  %19 = load %struct.bufdomain*, %struct.bufdomain** %3, align 8
  %20 = getelementptr inbounds %struct.bufdomain, %struct.bufdomain* %19, i32 0, i32 1
  %21 = call i32 @atomic_add_int(i32* %20, i32 1)
  %22 = load %struct.bufdomain*, %struct.bufdomain** %3, align 8
  %23 = call i32 @bufspace_daemon_wakeup(%struct.bufdomain* %22)
  %24 = load i32, i32* @numbufallocfails, align 4
  %25 = call i32 @counter_u64_add(i32 %24, i32 1)
  store %struct.buf* null, %struct.buf** %2, align 8
  br label %168

26:                                               ; preds = %15
  %27 = load i32, i32* %5, align 4
  %28 = load %struct.bufdomain*, %struct.bufdomain** %3, align 8
  %29 = getelementptr inbounds %struct.bufdomain, %struct.bufdomain* %28, i32 0, i32 0
  %30 = load i32, i32* %29, align 4
  %31 = icmp eq i32 %27, %30
  br i1 %31, label %32, label %35

32:                                               ; preds = %26
  %33 = load %struct.bufdomain*, %struct.bufdomain** %3, align 8
  %34 = call i32 @bufspace_daemon_wakeup(%struct.bufdomain* %33)
  br label %35

35:                                               ; preds = %32, %26
  %36 = load %struct.buf*, %struct.buf** %4, align 8
  %37 = load i32, i32* @LK_EXCLUSIVE, align 4
  %38 = load i32, i32* @LK_NOWAIT, align 4
  %39 = or i32 %37, %38
  %40 = call i64 @BUF_LOCK(%struct.buf* %36, i32 %39, i32* null)
  %41 = icmp ne i64 %40, 0
  br i1 %41, label %42, label %45

42:                                               ; preds = %35
  %43 = load %struct.buf*, %struct.buf** %4, align 8
  %44 = call i32 @panic(i8* getelementptr inbounds ([46 x i8], [46 x i8]* @.str, i64 0, i64 0), %struct.buf* %43)
  br label %45

45:                                               ; preds = %42, %35
  %46 = load %struct.buf*, %struct.buf** %4, align 8
  %47 = getelementptr inbounds %struct.buf, %struct.buf* %46, i32 0, i32 21
  %48 = load i32*, i32** %47, align 8
  %49 = icmp eq i32* %48, null
  %50 = zext i1 %49 to i32
  %51 = load %struct.buf*, %struct.buf** %4, align 8
  %52 = load %struct.buf*, %struct.buf** %4, align 8
  %53 = getelementptr inbounds %struct.buf, %struct.buf* %52, i32 0, i32 21
  %54 = load i32*, i32** %53, align 8
  %55 = bitcast i32* %54 to i8*
  %56 = call i32 @KASSERT(i32 %50, i8* %55)
  %57 = load %struct.buf*, %struct.buf** %4, align 8
  %58 = getelementptr inbounds %struct.buf, %struct.buf* %57, i32 0, i32 0
  %59 = load i32, i32* %58, align 8
  %60 = load i32, i32* @B_DELWRI, align 4
  %61 = load i32, i32* @B_NOREUSE, align 4
  %62 = or i32 %60, %61
  %63 = and i32 %59, %62
  %64 = icmp eq i32 %63, 0
  %65 = zext i1 %64 to i32
  %66 = load %struct.buf*, %struct.buf** %4, align 8
  %67 = load %struct.buf*, %struct.buf** %4, align 8
  %68 = getelementptr inbounds %struct.buf, %struct.buf* %67, i32 0, i32 0
  %69 = load i32, i32* %68, align 8
  %70 = sext i32 %69 to i64
  %71 = inttoptr i64 %70 to i8*
  %72 = call i32 @KASSERT(i32 %65, i8* %71)
  %73 = load %struct.buf*, %struct.buf** %4, align 8
  %74 = getelementptr inbounds %struct.buf, %struct.buf* %73, i32 0, i32 1
  %75 = load i32, i32* %74, align 4
  %76 = load i32, i32* @BX_VNCLEAN, align 4
  %77 = load i32, i32* @BX_VNDIRTY, align 4
  %78 = or i32 %76, %77
  %79 = and i32 %75, %78
  %80 = icmp eq i32 %79, 0
  %81 = zext i1 %80 to i32
  %82 = load %struct.buf*, %struct.buf** %4, align 8
  %83 = load %struct.buf*, %struct.buf** %4, align 8
  %84 = getelementptr inbounds %struct.buf, %struct.buf* %83, i32 0, i32 1
  %85 = load i32, i32* %84, align 4
  %86 = sext i32 %85 to i64
  %87 = inttoptr i64 %86 to i8*
  %88 = call i32 @KASSERT(i32 %81, i8* %87)
  %89 = load %struct.buf*, %struct.buf** %4, align 8
  %90 = getelementptr inbounds %struct.buf, %struct.buf* %89, i32 0, i32 2
  %91 = load i64, i64* %90, align 8
  %92 = icmp eq i64 %91, 0
  %93 = zext i1 %92 to i32
  %94 = load %struct.buf*, %struct.buf** %4, align 8
  %95 = load %struct.buf*, %struct.buf** %4, align 8
  %96 = getelementptr inbounds %struct.buf, %struct.buf* %95, i32 0, i32 2
  %97 = load i64, i64* %96, align 8
  %98 = inttoptr i64 %97 to i8*
  %99 = call i32 @KASSERT(i32 %93, i8* %98)
  %100 = load %struct.buf*, %struct.buf** %4, align 8
  %101 = getelementptr inbounds %struct.buf, %struct.buf* %100, i32 0, i32 3
  %102 = load i64, i64* %101, align 8
  %103 = icmp eq i64 %102, 0
  %104 = zext i1 %103 to i32
  %105 = load %struct.buf*, %struct.buf** %4, align 8
  %106 = bitcast %struct.buf* %105 to i8*
  %107 = call i32 @KASSERT(i32 %104, i8* %106)
  %108 = load %struct.buf*, %struct.buf** %4, align 8
  %109 = getelementptr inbounds %struct.buf, %struct.buf* %108, i32 0, i32 4
  %110 = load i64, i64* %109, align 8
  %111 = icmp eq i64 %110, 0
  %112 = zext i1 %111 to i32
  %113 = load %struct.buf*, %struct.buf** %4, align 8
  %114 = bitcast %struct.buf* %113 to i8*
  %115 = call i32 @KASSERT(i32 %112, i8* %114)
  %116 = load %struct.bufdomain*, %struct.bufdomain** %3, align 8
  %117 = call i32 @BD_DOMAIN(%struct.bufdomain* %116)
  %118 = load %struct.buf*, %struct.buf** %4, align 8
  %119 = getelementptr inbounds %struct.buf, %struct.buf* %118, i32 0, i32 24
  store i32 %117, i32* %119, align 8
  %120 = load %struct.buf*, %struct.buf** %4, align 8
  %121 = getelementptr inbounds %struct.buf, %struct.buf* %120, i32 0, i32 0
  store i32 0, i32* %121, align 8
  %122 = load %struct.buf*, %struct.buf** %4, align 8
  %123 = getelementptr inbounds %struct.buf, %struct.buf* %122, i32 0, i32 23
  store i64 0, i64* %123, align 8
  %124 = load %struct.buf*, %struct.buf** %4, align 8
  %125 = getelementptr inbounds %struct.buf, %struct.buf* %124, i32 0, i32 1
  store i32 0, i32* %125, align 4
  %126 = load %struct.buf*, %struct.buf** %4, align 8
  %127 = getelementptr inbounds %struct.buf, %struct.buf* %126, i32 0, i32 22
  store i64 0, i64* %127, align 8
  %128 = load %struct.buf*, %struct.buf** %4, align 8
  %129 = getelementptr inbounds %struct.buf, %struct.buf* %128, i32 0, i32 21
  store i32* null, i32** %129, align 8
  %130 = load %struct.buf*, %struct.buf** %4, align 8
  %131 = getelementptr inbounds %struct.buf, %struct.buf* %130, i32 0, i32 19
  store i64 0, i64* %131, align 8
  %132 = load %struct.buf*, %struct.buf** %4, align 8
  %133 = getelementptr inbounds %struct.buf, %struct.buf* %132, i32 0, i32 20
  store i64 0, i64* %133, align 8
  %134 = load i32, i32* @NOOFFSET, align 4
  %135 = load %struct.buf*, %struct.buf** %4, align 8
  %136 = getelementptr inbounds %struct.buf, %struct.buf* %135, i32 0, i32 18
  store i32 %134, i32* %136, align 8
  %137 = load %struct.buf*, %struct.buf** %4, align 8
  %138 = getelementptr inbounds %struct.buf, %struct.buf* %137, i32 0, i32 17
  store i64 0, i64* %138, align 8
  %139 = load %struct.buf*, %struct.buf** %4, align 8
  %140 = getelementptr inbounds %struct.buf, %struct.buf* %139, i32 0, i32 16
  store i64 0, i64* %140, align 8
  %141 = load %struct.buf*, %struct.buf** %4, align 8
  %142 = getelementptr inbounds %struct.buf, %struct.buf* %141, i32 0, i32 15
  store i64 0, i64* %142, align 8
  %143 = load %struct.buf*, %struct.buf** %4, align 8
  %144 = getelementptr inbounds %struct.buf, %struct.buf* %143, i32 0, i32 14
  store i64 0, i64* %144, align 8
  %145 = load %struct.buf*, %struct.buf** %4, align 8
  %146 = getelementptr inbounds %struct.buf, %struct.buf* %145, i32 0, i32 2
  store i64 0, i64* %146, align 8
  %147 = load %struct.buf*, %struct.buf** %4, align 8
  %148 = getelementptr inbounds %struct.buf, %struct.buf* %147, i32 0, i32 12
  store i64 0, i64* %148, align 8
  %149 = load %struct.buf*, %struct.buf** %4, align 8
  %150 = getelementptr inbounds %struct.buf, %struct.buf* %149, i32 0, i32 13
  store i64 0, i64* %150, align 8
  %151 = load %struct.buf*, %struct.buf** %4, align 8
  %152 = getelementptr inbounds %struct.buf, %struct.buf* %151, i32 0, i32 11
  store i32* null, i32** %152, align 8
  %153 = load i32, i32* @unmapped_buf, align 4
  %154 = load %struct.buf*, %struct.buf** %4, align 8
  %155 = getelementptr inbounds %struct.buf, %struct.buf* %154, i32 0, i32 9
  store i32 %153, i32* %155, align 8
  %156 = load %struct.buf*, %struct.buf** %4, align 8
  %157 = getelementptr inbounds %struct.buf, %struct.buf* %156, i32 0, i32 10
  store i32 %153, i32* %157, align 4
  %158 = load %struct.buf*, %struct.buf** %4, align 8
  %159 = getelementptr inbounds %struct.buf, %struct.buf* %158, i32 0, i32 8
  store i32* null, i32** %159, align 8
  %160 = load %struct.buf*, %struct.buf** %4, align 8
  %161 = getelementptr inbounds %struct.buf, %struct.buf* %160, i32 0, i32 7
  store i32* null, i32** %161, align 8
  %162 = load %struct.buf*, %struct.buf** %4, align 8
  %163 = getelementptr inbounds %struct.buf, %struct.buf* %162, i32 0, i32 6
  store i32* null, i32** %163, align 8
  %164 = load %struct.buf*, %struct.buf** %4, align 8
  %165 = getelementptr inbounds %struct.buf, %struct.buf* %164, i32 0, i32 5
  %166 = call i32 @LIST_INIT(i32* %165)
  %167 = load %struct.buf*, %struct.buf** %4, align 8
  store %struct.buf* %167, %struct.buf** %2, align 8
  br label %168

168:                                              ; preds = %45, %18
  %169 = load %struct.buf*, %struct.buf** %2, align 8
  ret %struct.buf* %169
}

declare dso_local i32 @atomic_fetchadd_int(i32*, i32) #1

declare dso_local %struct.buf* @uma_zalloc(i32, i32) #1

declare dso_local i32 @atomic_add_int(i32*, i32) #1

declare dso_local i32 @bufspace_daemon_wakeup(%struct.bufdomain*) #1

declare dso_local i32 @counter_u64_add(i32, i32) #1

declare dso_local i64 @BUF_LOCK(%struct.buf*, i32, i32*) #1

declare dso_local i32 @panic(i8*, %struct.buf*) #1

declare dso_local i32 @KASSERT(i32, i8*) #1

declare dso_local i32 @BD_DOMAIN(%struct.bufdomain*) #1

declare dso_local i32 @LIST_INIT(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
