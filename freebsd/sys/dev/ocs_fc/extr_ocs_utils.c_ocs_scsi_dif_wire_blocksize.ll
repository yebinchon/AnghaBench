; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/ocs_fc/extr_ocs_utils.c_ocs_scsi_dif_wire_blocksize.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/ocs_fc/extr_ocs_utils.c_ocs_scsi_dif_wire_blocksize.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i64 }

@DIF_SIZE = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @ocs_scsi_dif_wire_blocksize(%struct.TYPE_4__* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.TYPE_4__*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i64, align 8
  %7 = alloca [10 x i64], align 16
  %8 = alloca [10 x i64], align 16
  store %struct.TYPE_4__* %0, %struct.TYPE_4__** %4, align 8
  store i32 %1, i32* %5, align 4
  %9 = getelementptr inbounds [10 x i64], [10 x i64]* %7, i64 0, i64 0
  store i64 0, i64* %9, align 8
  %10 = getelementptr inbounds i64, i64* %9, i64 1
  store i64 0, i64* %10, align 8
  %11 = getelementptr inbounds i64, i64* %10, i64 1
  %12 = load i64, i64* @DIF_SIZE, align 8
  store i64 %12, i64* %11, align 8
  %13 = getelementptr inbounds i64, i64* %11, i64 1
  store i64 0, i64* %13, align 8
  %14 = getelementptr inbounds i64, i64* %13, i64 1
  %15 = load i64, i64* @DIF_SIZE, align 8
  store i64 %15, i64* %14, align 8
  %16 = getelementptr inbounds i64, i64* %14, i64 1
  %17 = load i64, i64* @DIF_SIZE, align 8
  store i64 %17, i64* %16, align 8
  %18 = getelementptr inbounds i64, i64* %16, i64 1
  %19 = load i64, i64* @DIF_SIZE, align 8
  store i64 %19, i64* %18, align 8
  %20 = getelementptr inbounds i64, i64* %18, i64 1
  %21 = load i64, i64* @DIF_SIZE, align 8
  store i64 %21, i64* %20, align 8
  %22 = getelementptr inbounds i64, i64* %20, i64 1
  %23 = load i64, i64* @DIF_SIZE, align 8
  store i64 %23, i64* %22, align 8
  %24 = getelementptr inbounds i64, i64* %22, i64 1
  %25 = load i64, i64* @DIF_SIZE, align 8
  store i64 %25, i64* %24, align 8
  %26 = getelementptr inbounds [10 x i64], [10 x i64]* %8, i64 0, i64 0
  store i64 0, i64* %26, align 8
  %27 = getelementptr inbounds i64, i64* %26, i64 1
  %28 = load i64, i64* @DIF_SIZE, align 8
  store i64 %28, i64* %27, align 8
  %29 = getelementptr inbounds i64, i64* %27, i64 1
  store i64 0, i64* %29, align 8
  %30 = getelementptr inbounds i64, i64* %29, i64 1
  %31 = load i64, i64* @DIF_SIZE, align 8
  store i64 %31, i64* %30, align 8
  %32 = getelementptr inbounds i64, i64* %30, i64 1
  store i64 0, i64* %32, align 8
  %33 = getelementptr inbounds i64, i64* %32, i64 1
  %34 = load i64, i64* @DIF_SIZE, align 8
  store i64 %34, i64* %33, align 8
  %35 = getelementptr inbounds i64, i64* %33, i64 1
  %36 = load i64, i64* @DIF_SIZE, align 8
  store i64 %36, i64* %35, align 8
  %37 = getelementptr inbounds i64, i64* %35, i64 1
  %38 = load i64, i64* @DIF_SIZE, align 8
  store i64 %38, i64* %37, align 8
  %39 = getelementptr inbounds i64, i64* %37, i64 1
  %40 = load i64, i64* @DIF_SIZE, align 8
  store i64 %40, i64* %39, align 8
  %41 = getelementptr inbounds i64, i64* %39, i64 1
  %42 = load i64, i64* @DIF_SIZE, align 8
  store i64 %42, i64* %41, align 8
  %43 = load %struct.TYPE_4__*, %struct.TYPE_4__** %4, align 8
  %44 = call i64 @ocs_scsi_dif_blocksize(%struct.TYPE_4__* %43)
  store i64 %44, i64* %6, align 8
  %45 = load i64, i64* %6, align 8
  %46 = icmp eq i64 %45, 0
  br i1 %46, label %47, label %48

47:                                               ; preds = %2
  store i32 -1, i32* %3, align 4
  br label %86

48:                                               ; preds = %2
  %49 = load i32, i32* %5, align 4
  %50 = icmp ne i32 %49, 0
  br i1 %50, label %51, label %67

51:                                               ; preds = %48
  %52 = load %struct.TYPE_4__*, %struct.TYPE_4__** %4, align 8
  %53 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %52, i32 0, i32 0
  %54 = load i64, i64* %53, align 8
  %55 = getelementptr inbounds [10 x i64], [10 x i64]* %7, i64 0, i64 0
  %56 = call i64 @ARRAY_SIZE(i64* %55)
  %57 = icmp ult i64 %54, %56
  %58 = zext i1 %57 to i32
  %59 = call i32 @ocs_assert(i32 %58, i32 0)
  %60 = load %struct.TYPE_4__*, %struct.TYPE_4__** %4, align 8
  %61 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %60, i32 0, i32 0
  %62 = load i64, i64* %61, align 8
  %63 = getelementptr inbounds [10 x i64], [10 x i64]* %7, i64 0, i64 %62
  %64 = load i64, i64* %63, align 8
  %65 = load i64, i64* %6, align 8
  %66 = add nsw i64 %65, %64
  store i64 %66, i64* %6, align 8
  br label %83

67:                                               ; preds = %48
  %68 = load %struct.TYPE_4__*, %struct.TYPE_4__** %4, align 8
  %69 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %68, i32 0, i32 0
  %70 = load i64, i64* %69, align 8
  %71 = getelementptr inbounds [10 x i64], [10 x i64]* %8, i64 0, i64 0
  %72 = call i64 @ARRAY_SIZE(i64* %71)
  %73 = icmp ult i64 %70, %72
  %74 = zext i1 %73 to i32
  %75 = call i32 @ocs_assert(i32 %74, i32 0)
  %76 = load %struct.TYPE_4__*, %struct.TYPE_4__** %4, align 8
  %77 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %76, i32 0, i32 0
  %78 = load i64, i64* %77, align 8
  %79 = getelementptr inbounds [10 x i64], [10 x i64]* %8, i64 0, i64 %78
  %80 = load i64, i64* %79, align 8
  %81 = load i64, i64* %6, align 8
  %82 = add nsw i64 %81, %80
  store i64 %82, i64* %6, align 8
  br label %83

83:                                               ; preds = %67, %51
  %84 = load i64, i64* %6, align 8
  %85 = trunc i64 %84 to i32
  store i32 %85, i32* %3, align 4
  br label %86

86:                                               ; preds = %83, %47
  %87 = load i32, i32* %3, align 4
  ret i32 %87
}

declare dso_local i64 @ocs_scsi_dif_blocksize(%struct.TYPE_4__*) #1

declare dso_local i32 @ocs_assert(i32, i32) #1

declare dso_local i64 @ARRAY_SIZE(i64*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
