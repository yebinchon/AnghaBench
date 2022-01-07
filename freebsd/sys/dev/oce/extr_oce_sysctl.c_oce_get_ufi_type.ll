; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/oce/extr_oce_sysctl.c_oce_get_ufi_type.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/oce/extr_oce_sysctl.c_oce_get_ufi_type.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_6__ = type { i32 }
%struct.flash_file_hdr = type { i8*, i32 }

@UFI_TYPE4R = common dso_local global i32 0, align 4
@UFI_TYPE4 = common dso_local global i32 0, align 4
@UFI_TYPE3R = common dso_local global i32 0, align 4
@UFI_TYPE3 = common dso_local global i32 0, align 4
@UFI_TYPE2 = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [51 x i8] c"UFI and Interface are not compatible for flashing\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_6__*, %struct.flash_file_hdr*)* @oce_get_ufi_type to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @oce_get_ufi_type(%struct.TYPE_6__* %0, %struct.flash_file_hdr* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.TYPE_6__*, align 8
  %5 = alloca %struct.flash_file_hdr*, align 8
  store %struct.TYPE_6__* %0, %struct.TYPE_6__** %4, align 8
  store %struct.flash_file_hdr* %1, %struct.flash_file_hdr** %5, align 8
  %6 = load %struct.flash_file_hdr*, %struct.flash_file_hdr** %5, align 8
  %7 = icmp eq %struct.flash_file_hdr* %6, null
  br i1 %7, label %8, label %9

8:                                                ; preds = %2
  br label %68

9:                                                ; preds = %2
  %10 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %11 = call i64 @IS_SH(%struct.TYPE_6__* %10)
  %12 = icmp ne i64 %11, 0
  br i1 %12, label %13, label %30

13:                                               ; preds = %9
  %14 = load %struct.flash_file_hdr*, %struct.flash_file_hdr** %5, align 8
  %15 = getelementptr inbounds %struct.flash_file_hdr, %struct.flash_file_hdr* %14, i32 0, i32 0
  %16 = load i8*, i8** %15, align 8
  %17 = getelementptr inbounds i8, i8* %16, i64 0
  %18 = load i8, i8* %17, align 1
  %19 = sext i8 %18 to i32
  %20 = icmp eq i32 %19, 52
  br i1 %20, label %21, label %30

21:                                               ; preds = %13
  %22 = load %struct.flash_file_hdr*, %struct.flash_file_hdr** %5, align 8
  %23 = getelementptr inbounds %struct.flash_file_hdr, %struct.flash_file_hdr* %22, i32 0, i32 1
  %24 = load i32, i32* %23, align 8
  %25 = icmp sge i32 %24, 16
  br i1 %25, label %26, label %28

26:                                               ; preds = %21
  %27 = load i32, i32* @UFI_TYPE4R, align 4
  store i32 %27, i32* %3, align 4
  br label %73

28:                                               ; preds = %21
  %29 = load i32, i32* @UFI_TYPE4, align 4
  store i32 %29, i32* %3, align 4
  br label %73

30:                                               ; preds = %13, %9
  %31 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %32 = call i64 @IS_BE3(%struct.TYPE_6__* %31)
  %33 = icmp ne i64 %32, 0
  br i1 %33, label %34, label %51

34:                                               ; preds = %30
  %35 = load %struct.flash_file_hdr*, %struct.flash_file_hdr** %5, align 8
  %36 = getelementptr inbounds %struct.flash_file_hdr, %struct.flash_file_hdr* %35, i32 0, i32 0
  %37 = load i8*, i8** %36, align 8
  %38 = getelementptr inbounds i8, i8* %37, i64 0
  %39 = load i8, i8* %38, align 1
  %40 = sext i8 %39 to i32
  %41 = icmp eq i32 %40, 51
  br i1 %41, label %42, label %51

42:                                               ; preds = %34
  %43 = load %struct.flash_file_hdr*, %struct.flash_file_hdr** %5, align 8
  %44 = getelementptr inbounds %struct.flash_file_hdr, %struct.flash_file_hdr* %43, i32 0, i32 1
  %45 = load i32, i32* %44, align 8
  %46 = icmp eq i32 %45, 16
  br i1 %46, label %47, label %49

47:                                               ; preds = %42
  %48 = load i32, i32* @UFI_TYPE3R, align 4
  store i32 %48, i32* %3, align 4
  br label %73

49:                                               ; preds = %42
  %50 = load i32, i32* @UFI_TYPE3, align 4
  store i32 %50, i32* %3, align 4
  br label %73

51:                                               ; preds = %34, %30
  %52 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %53 = call i64 @IS_BE2(%struct.TYPE_6__* %52)
  %54 = icmp ne i64 %53, 0
  br i1 %54, label %55, label %65

55:                                               ; preds = %51
  %56 = load %struct.flash_file_hdr*, %struct.flash_file_hdr** %5, align 8
  %57 = getelementptr inbounds %struct.flash_file_hdr, %struct.flash_file_hdr* %56, i32 0, i32 0
  %58 = load i8*, i8** %57, align 8
  %59 = getelementptr inbounds i8, i8* %58, i64 0
  %60 = load i8, i8* %59, align 1
  %61 = sext i8 %60 to i32
  %62 = icmp eq i32 %61, 50
  br i1 %62, label %63, label %65

63:                                               ; preds = %55
  %64 = load i32, i32* @UFI_TYPE2, align 4
  store i32 %64, i32* %3, align 4
  br label %73

65:                                               ; preds = %55, %51
  br label %66

66:                                               ; preds = %65
  br label %67

67:                                               ; preds = %66
  br label %68

68:                                               ; preds = %67, %8
  %69 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %70 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %69, i32 0, i32 0
  %71 = load i32, i32* %70, align 4
  %72 = call i32 @device_printf(i32 %71, i8* getelementptr inbounds ([51 x i8], [51 x i8]* @.str, i64 0, i64 0))
  store i32 -1, i32* %3, align 4
  br label %73

73:                                               ; preds = %68, %63, %49, %47, %28, %26
  %74 = load i32, i32* %3, align 4
  ret i32 %74
}

declare dso_local i64 @IS_SH(%struct.TYPE_6__*) #1

declare dso_local i64 @IS_BE3(%struct.TYPE_6__*) #1

declare dso_local i64 @IS_BE2(%struct.TYPE_6__*) #1

declare dso_local i32 @device_printf(i32, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
