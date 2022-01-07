; ModuleID = '/home/carl/AnghaBench/freebsd/sys/kern/extr_vfs_aio.c_aio_biowakeup.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/kern/extr_vfs_aio.c_aio_biowakeup.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.bio = type { i64, i32, i32, i64 }
%struct.kaiocb = type { i32, i32, %struct.TYPE_3__, %struct.bio*, i32, i32, %struct.TYPE_4__*, %struct.proc* }
%struct.TYPE_3__ = type { i64, i64 }
%struct.TYPE_4__ = type { i64 }
%struct.proc = type { %struct.kaioinfo* }
%struct.kaioinfo = type { i32 }

@pbuf_zone = common dso_local global i32 0, align 4
@num_buf_aio = common dso_local global i32 0, align 4
@num_unmapped_aio = common dso_local global i32 0, align 4
@BIO_ERROR = common dso_local global i32 0, align 4
@LIO_WRITE = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.bio*)* @aio_biowakeup to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @aio_biowakeup(%struct.bio* %0) #0 {
  %2 = alloca %struct.bio*, align 8
  %3 = alloca %struct.kaiocb*, align 8
  %4 = alloca %struct.proc*, align 8
  %5 = alloca %struct.kaioinfo*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store %struct.bio* %0, %struct.bio** %2, align 8
  %9 = load %struct.bio*, %struct.bio** %2, align 8
  %10 = getelementptr inbounds %struct.bio, %struct.bio* %9, i32 0, i32 3
  %11 = load i64, i64* %10, align 8
  %12 = inttoptr i64 %11 to %struct.kaiocb*
  store %struct.kaiocb* %12, %struct.kaiocb** %3, align 8
  %13 = load %struct.kaiocb*, %struct.kaiocb** %3, align 8
  %14 = getelementptr inbounds %struct.kaiocb, %struct.kaiocb* %13, i32 0, i32 7
  %15 = load %struct.proc*, %struct.proc** %14, align 8
  store %struct.proc* %15, %struct.proc** %4, align 8
  %16 = load %struct.proc*, %struct.proc** %4, align 8
  %17 = getelementptr inbounds %struct.proc, %struct.proc* %16, i32 0, i32 0
  %18 = load %struct.kaioinfo*, %struct.kaioinfo** %17, align 8
  store %struct.kaioinfo* %18, %struct.kaioinfo** %5, align 8
  %19 = load %struct.kaiocb*, %struct.kaiocb** %3, align 8
  %20 = getelementptr inbounds %struct.kaiocb, %struct.kaiocb* %19, i32 0, i32 6
  %21 = load %struct.TYPE_4__*, %struct.TYPE_4__** %20, align 8
  %22 = icmp ne %struct.TYPE_4__* %21, null
  br i1 %22, label %23, label %50

23:                                               ; preds = %1
  %24 = load %struct.kaiocb*, %struct.kaiocb** %3, align 8
  %25 = getelementptr inbounds %struct.kaiocb, %struct.kaiocb* %24, i32 0, i32 6
  %26 = load %struct.TYPE_4__*, %struct.TYPE_4__** %25, align 8
  %27 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %26, i32 0, i32 0
  %28 = load i64, i64* %27, align 8
  %29 = trunc i64 %28 to i32
  %30 = load %struct.kaiocb*, %struct.kaiocb** %3, align 8
  %31 = getelementptr inbounds %struct.kaiocb, %struct.kaiocb* %30, i32 0, i32 4
  %32 = load i32, i32* %31, align 8
  %33 = call i32 @pmap_qremove(i32 %29, i32 %32)
  %34 = load i32, i32* @pbuf_zone, align 4
  %35 = load %struct.kaiocb*, %struct.kaiocb** %3, align 8
  %36 = getelementptr inbounds %struct.kaiocb, %struct.kaiocb* %35, i32 0, i32 6
  %37 = load %struct.TYPE_4__*, %struct.TYPE_4__** %36, align 8
  %38 = call i32 @uma_zfree(i32 %34, %struct.TYPE_4__* %37)
  %39 = load %struct.kaiocb*, %struct.kaiocb** %3, align 8
  %40 = getelementptr inbounds %struct.kaiocb, %struct.kaiocb* %39, i32 0, i32 6
  store %struct.TYPE_4__* null, %struct.TYPE_4__** %40, align 8
  %41 = call i32 @atomic_subtract_int(i32* @num_buf_aio, i32 1)
  %42 = load %struct.kaioinfo*, %struct.kaioinfo** %5, align 8
  %43 = call i32 @AIO_LOCK(%struct.kaioinfo* %42)
  %44 = load %struct.kaioinfo*, %struct.kaioinfo** %5, align 8
  %45 = getelementptr inbounds %struct.kaioinfo, %struct.kaioinfo* %44, i32 0, i32 0
  %46 = load i32, i32* %45, align 4
  %47 = add nsw i32 %46, -1
  store i32 %47, i32* %45, align 4
  %48 = load %struct.kaioinfo*, %struct.kaioinfo** %5, align 8
  %49 = call i32 @AIO_UNLOCK(%struct.kaioinfo* %48)
  br label %52

50:                                               ; preds = %1
  %51 = call i32 @atomic_subtract_int(i32* @num_unmapped_aio, i32 1)
  br label %52

52:                                               ; preds = %50, %23
  %53 = load %struct.kaiocb*, %struct.kaiocb** %3, align 8
  %54 = getelementptr inbounds %struct.kaiocb, %struct.kaiocb* %53, i32 0, i32 5
  %55 = load i32, i32* %54, align 4
  %56 = load %struct.kaiocb*, %struct.kaiocb** %3, align 8
  %57 = getelementptr inbounds %struct.kaiocb, %struct.kaiocb* %56, i32 0, i32 4
  %58 = load i32, i32* %57, align 8
  %59 = call i32 @vm_page_unhold_pages(i32 %55, i32 %58)
  %60 = load %struct.kaiocb*, %struct.kaiocb** %3, align 8
  %61 = getelementptr inbounds %struct.kaiocb, %struct.kaiocb* %60, i32 0, i32 3
  %62 = load %struct.bio*, %struct.bio** %61, align 8
  store %struct.bio* %62, %struct.bio** %2, align 8
  %63 = load %struct.kaiocb*, %struct.kaiocb** %3, align 8
  %64 = getelementptr inbounds %struct.kaiocb, %struct.kaiocb* %63, i32 0, i32 3
  store %struct.bio* null, %struct.bio** %64, align 8
  %65 = load %struct.kaiocb*, %struct.kaiocb** %3, align 8
  %66 = getelementptr inbounds %struct.kaiocb, %struct.kaiocb* %65, i32 0, i32 2
  %67 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %66, i32 0, i32 0
  %68 = load i64, i64* %67, align 8
  %69 = load %struct.bio*, %struct.bio** %2, align 8
  %70 = getelementptr inbounds %struct.bio, %struct.bio* %69, i32 0, i32 0
  %71 = load i64, i64* %70, align 8
  %72 = sub i64 %68, %71
  store i64 %72, i64* %6, align 8
  store i32 0, i32* %7, align 4
  %73 = load %struct.bio*, %struct.bio** %2, align 8
  %74 = getelementptr inbounds %struct.bio, %struct.bio* %73, i32 0, i32 1
  %75 = load i32, i32* %74, align 8
  %76 = load i32, i32* @BIO_ERROR, align 4
  %77 = and i32 %75, %76
  %78 = icmp ne i32 %77, 0
  br i1 %78, label %79, label %83

79:                                               ; preds = %52
  %80 = load %struct.bio*, %struct.bio** %2, align 8
  %81 = getelementptr inbounds %struct.bio, %struct.bio* %80, i32 0, i32 2
  %82 = load i32, i32* %81, align 4
  store i32 %82, i32* %7, align 4
  br label %83

83:                                               ; preds = %79, %52
  %84 = load i64, i64* %6, align 8
  %85 = call i32 @btodb(i64 %84)
  store i32 %85, i32* %8, align 4
  %86 = load %struct.kaiocb*, %struct.kaiocb** %3, align 8
  %87 = getelementptr inbounds %struct.kaiocb, %struct.kaiocb* %86, i32 0, i32 2
  %88 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %87, i32 0, i32 1
  %89 = load i64, i64* %88, align 8
  %90 = load i64, i64* @LIO_WRITE, align 8
  %91 = icmp eq i64 %89, %90
  br i1 %91, label %92, label %98

92:                                               ; preds = %83
  %93 = load i32, i32* %8, align 4
  %94 = load %struct.kaiocb*, %struct.kaiocb** %3, align 8
  %95 = getelementptr inbounds %struct.kaiocb, %struct.kaiocb* %94, i32 0, i32 0
  %96 = load i32, i32* %95, align 8
  %97 = add nsw i32 %96, %93
  store i32 %97, i32* %95, align 8
  br label %104

98:                                               ; preds = %83
  %99 = load i32, i32* %8, align 4
  %100 = load %struct.kaiocb*, %struct.kaiocb** %3, align 8
  %101 = getelementptr inbounds %struct.kaiocb, %struct.kaiocb* %100, i32 0, i32 1
  %102 = load i32, i32* %101, align 4
  %103 = add nsw i32 %102, %99
  store i32 %103, i32* %101, align 4
  br label %104

104:                                              ; preds = %98, %92
  %105 = load i32, i32* %7, align 4
  %106 = icmp ne i32 %105, 0
  br i1 %106, label %107, label %111

107:                                              ; preds = %104
  %108 = load %struct.kaiocb*, %struct.kaiocb** %3, align 8
  %109 = load i32, i32* %7, align 4
  %110 = call i32 @aio_complete(%struct.kaiocb* %108, i64 -1, i32 %109)
  br label %115

111:                                              ; preds = %104
  %112 = load %struct.kaiocb*, %struct.kaiocb** %3, align 8
  %113 = load i64, i64* %6, align 8
  %114 = call i32 @aio_complete(%struct.kaiocb* %112, i64 %113, i32 0)
  br label %115

115:                                              ; preds = %111, %107
  %116 = load %struct.bio*, %struct.bio** %2, align 8
  %117 = call i32 @g_destroy_bio(%struct.bio* %116)
  ret void
}

declare dso_local i32 @pmap_qremove(i32, i32) #1

declare dso_local i32 @uma_zfree(i32, %struct.TYPE_4__*) #1

declare dso_local i32 @atomic_subtract_int(i32*, i32) #1

declare dso_local i32 @AIO_LOCK(%struct.kaioinfo*) #1

declare dso_local i32 @AIO_UNLOCK(%struct.kaioinfo*) #1

declare dso_local i32 @vm_page_unhold_pages(i32, i32) #1

declare dso_local i32 @btodb(i64) #1

declare dso_local i32 @aio_complete(%struct.kaiocb*, i64, i32) #1

declare dso_local i32 @g_destroy_bio(%struct.bio*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
