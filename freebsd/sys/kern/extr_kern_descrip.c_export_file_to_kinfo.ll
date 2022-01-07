; ModuleID = '/home/carl/AnghaBench/freebsd/sys/kern/extr_kern_descrip.c_export_file_to_kinfo.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/kern/extr_kern_descrip.c_export_file_to_kinfo.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.file = type { i32, i32 }
%struct.kinfo_file = type { i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.filedesc = type { i32 }

@KF_TYPE_UNKNOWN = common dso_local global i32 0, align 4
@KF_ATTR_VALID = common dso_local global i32 0, align 4
@KERN_FILEDESC_PACK_KINFO = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.file*, i32, i32*, %struct.kinfo_file*, %struct.filedesc*, i32)* @export_file_to_kinfo to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @export_file_to_kinfo(%struct.file* %0, i32 %1, i32* %2, %struct.kinfo_file* %3, %struct.filedesc* %4, i32 %5) #0 {
  %7 = alloca %struct.file*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32*, align 8
  %10 = alloca %struct.kinfo_file*, align 8
  %11 = alloca %struct.filedesc*, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  store %struct.file* %0, %struct.file** %7, align 8
  store i32 %1, i32* %8, align 4
  store i32* %2, i32** %9, align 8
  store %struct.kinfo_file* %3, %struct.kinfo_file** %10, align 8
  store %struct.filedesc* %4, %struct.filedesc** %11, align 8
  store i32 %5, i32* %12, align 4
  %14 = load %struct.kinfo_file*, %struct.kinfo_file** %10, align 8
  %15 = call i32 @bzero(%struct.kinfo_file* %14, i32 32)
  %16 = load i32, i32* @KF_TYPE_UNKNOWN, align 4
  %17 = load %struct.kinfo_file*, %struct.kinfo_file** %10, align 8
  %18 = getelementptr inbounds %struct.kinfo_file, %struct.kinfo_file* %17, i32 0, i32 7
  store i32 %16, i32* %18, align 4
  %19 = load %struct.file*, %struct.file** %7, align 8
  %20 = getelementptr inbounds %struct.file, %struct.file* %19, i32 0, i32 1
  %21 = load i32, i32* %20, align 4
  %22 = call i32 @xlate_fflags(i32 %21)
  %23 = load %struct.kinfo_file*, %struct.kinfo_file** %10, align 8
  %24 = getelementptr inbounds %struct.kinfo_file, %struct.kinfo_file* %23, i32 0, i32 6
  store i32 %22, i32* %24, align 4
  %25 = load i32*, i32** %9, align 8
  %26 = icmp ne i32* %25, null
  br i1 %26, label %27, label %32

27:                                               ; preds = %6
  %28 = load i32*, i32** %9, align 8
  %29 = load i32, i32* %28, align 4
  %30 = load %struct.kinfo_file*, %struct.kinfo_file** %10, align 8
  %31 = getelementptr inbounds %struct.kinfo_file, %struct.kinfo_file* %30, i32 0, i32 5
  store i32 %29, i32* %31, align 4
  br label %36

32:                                               ; preds = %6
  %33 = load %struct.kinfo_file*, %struct.kinfo_file** %10, align 8
  %34 = getelementptr inbounds %struct.kinfo_file, %struct.kinfo_file* %33, i32 0, i32 5
  %35 = call i32 @cap_rights_init(i32* %34)
  br label %36

36:                                               ; preds = %32, %27
  %37 = load i32, i32* %8, align 4
  %38 = load %struct.kinfo_file*, %struct.kinfo_file** %10, align 8
  %39 = getelementptr inbounds %struct.kinfo_file, %struct.kinfo_file* %38, i32 0, i32 0
  store i32 %37, i32* %39, align 4
  %40 = load %struct.file*, %struct.file** %7, align 8
  %41 = getelementptr inbounds %struct.file, %struct.file* %40, i32 0, i32 0
  %42 = load i32, i32* %41, align 4
  %43 = load %struct.kinfo_file*, %struct.kinfo_file** %10, align 8
  %44 = getelementptr inbounds %struct.kinfo_file, %struct.kinfo_file* %43, i32 0, i32 4
  store i32 %42, i32* %44, align 4
  %45 = load %struct.file*, %struct.file** %7, align 8
  %46 = call i32 @foffset_get(%struct.file* %45)
  %47 = load %struct.kinfo_file*, %struct.kinfo_file** %10, align 8
  %48 = getelementptr inbounds %struct.kinfo_file, %struct.kinfo_file* %47, i32 0, i32 3
  store i32 %46, i32* %48, align 4
  %49 = load %struct.file*, %struct.file** %7, align 8
  %50 = load %struct.kinfo_file*, %struct.kinfo_file** %10, align 8
  %51 = load %struct.filedesc*, %struct.filedesc** %11, align 8
  %52 = call i32 @fo_fill_kinfo(%struct.file* %49, %struct.kinfo_file* %50, %struct.filedesc* %51)
  store i32 %52, i32* %13, align 4
  %53 = load i32, i32* %13, align 4
  %54 = icmp eq i32 %53, 0
  br i1 %54, label %55, label %61

55:                                               ; preds = %36
  %56 = load i32, i32* @KF_ATTR_VALID, align 4
  %57 = load %struct.kinfo_file*, %struct.kinfo_file** %10, align 8
  %58 = getelementptr inbounds %struct.kinfo_file, %struct.kinfo_file* %57, i32 0, i32 2
  %59 = load i32, i32* %58, align 4
  %60 = or i32 %59, %56
  store i32 %60, i32* %58, align 4
  br label %61

61:                                               ; preds = %55, %36
  %62 = load i32, i32* %12, align 4
  %63 = load i32, i32* @KERN_FILEDESC_PACK_KINFO, align 4
  %64 = and i32 %62, %63
  %65 = icmp ne i32 %64, 0
  br i1 %65, label %66, label %69

66:                                               ; preds = %61
  %67 = load %struct.kinfo_file*, %struct.kinfo_file** %10, align 8
  %68 = call i32 @pack_kinfo(%struct.kinfo_file* %67)
  br label %73

69:                                               ; preds = %61
  %70 = call i32 @roundup2(i32 32, i32 4)
  %71 = load %struct.kinfo_file*, %struct.kinfo_file** %10, align 8
  %72 = getelementptr inbounds %struct.kinfo_file, %struct.kinfo_file* %71, i32 0, i32 1
  store i32 %70, i32* %72, align 4
  br label %73

73:                                               ; preds = %69, %66
  ret void
}

declare dso_local i32 @bzero(%struct.kinfo_file*, i32) #1

declare dso_local i32 @xlate_fflags(i32) #1

declare dso_local i32 @cap_rights_init(i32*) #1

declare dso_local i32 @foffset_get(%struct.file*) #1

declare dso_local i32 @fo_fill_kinfo(%struct.file*, %struct.kinfo_file*, %struct.filedesc*) #1

declare dso_local i32 @pack_kinfo(%struct.kinfo_file*) #1

declare dso_local i32 @roundup2(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
