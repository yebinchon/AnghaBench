; ModuleID = '/home/carl/AnghaBench/freebsd/usr.sbin/mfiutil/extr_mfi_cmd.c_mfi_lookup_volume.c'
source_filename = "/home/carl/AnghaBench/freebsd/usr.sbin/mfiutil/extr_mfi_cmd.c_mfi_lookup_volume.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mfi_query_disk = type { i32 }
%struct.mfi_ld_list = type { i64, %struct.TYPE_6__* }
%struct.TYPE_6__ = type { %struct.TYPE_5__ }
%struct.TYPE_5__ = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i64 }

@MFI_DCMD_LD_GET_LIST = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@errno = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @mfi_lookup_volume(i32 %0, i8* %1, i64* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i8*, align 8
  %7 = alloca i64*, align 8
  %8 = alloca %struct.mfi_query_disk, align 4
  %9 = alloca %struct.mfi_ld_list, align 8
  %10 = alloca i8*, align 8
  %11 = alloca i64, align 8
  %12 = alloca i64, align 8
  store i32 %0, i32* %5, align 4
  store i8* %1, i8** %6, align 8
  store i64* %2, i64** %7, align 8
  %13 = load i8*, i8** %6, align 8
  %14 = call i64 @strtol(i8* %13, i8** %10, i32 0)
  store i64 %14, i64* %11, align 8
  %15 = load i8*, i8** %10, align 8
  %16 = load i8, i8* %15, align 1
  %17 = sext i8 %16 to i32
  %18 = icmp eq i32 %17, 0
  br i1 %18, label %19, label %22

19:                                               ; preds = %3
  %20 = load i64, i64* %11, align 8
  %21 = load i64*, i64** %7, align 8
  store i64 %20, i64* %21, align 8
  store i32 0, i32* %4, align 4
  br label %69

22:                                               ; preds = %3
  %23 = load i32, i32* %5, align 4
  %24 = load i32, i32* @MFI_DCMD_LD_GET_LIST, align 4
  %25 = call i64 @mfi_dcmd_command(i32 %23, i32 %24, %struct.mfi_ld_list* %9, i32 16, i32* null, i32 0, i32* null)
  %26 = icmp slt i64 %25, 0
  br i1 %26, label %27, label %28

27:                                               ; preds = %22
  store i32 -1, i32* %4, align 4
  br label %69

28:                                               ; preds = %22
  store i64 0, i64* %12, align 8
  br label %29

29:                                               ; preds = %64, %28
  %30 = load i64, i64* %12, align 8
  %31 = getelementptr inbounds %struct.mfi_ld_list, %struct.mfi_ld_list* %9, i32 0, i32 0
  %32 = load i64, i64* %31, align 8
  %33 = icmp ult i64 %30, %32
  br i1 %33, label %34, label %67

34:                                               ; preds = %29
  %35 = load i32, i32* %5, align 4
  %36 = getelementptr inbounds %struct.mfi_ld_list, %struct.mfi_ld_list* %9, i32 0, i32 1
  %37 = load %struct.TYPE_6__*, %struct.TYPE_6__** %36, align 8
  %38 = load i64, i64* %12, align 8
  %39 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %37, i64 %38
  %40 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %39, i32 0, i32 0
  %41 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %40, i32 0, i32 0
  %42 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %41, i32 0, i32 0
  %43 = load i64, i64* %42, align 8
  %44 = call i64 @mfi_query_disk(i32 %35, i64 %43, %struct.mfi_query_disk* %8)
  %45 = icmp slt i64 %44, 0
  br i1 %45, label %46, label %47

46:                                               ; preds = %34
  br label %64

47:                                               ; preds = %34
  %48 = load i8*, i8** %6, align 8
  %49 = getelementptr inbounds %struct.mfi_query_disk, %struct.mfi_query_disk* %8, i32 0, i32 0
  %50 = load i32, i32* %49, align 4
  %51 = call i64 @strcmp(i8* %48, i32 %50)
  %52 = icmp eq i64 %51, 0
  br i1 %52, label %53, label %63

53:                                               ; preds = %47
  %54 = getelementptr inbounds %struct.mfi_ld_list, %struct.mfi_ld_list* %9, i32 0, i32 1
  %55 = load %struct.TYPE_6__*, %struct.TYPE_6__** %54, align 8
  %56 = load i64, i64* %12, align 8
  %57 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %55, i64 %56
  %58 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %57, i32 0, i32 0
  %59 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %58, i32 0, i32 0
  %60 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %59, i32 0, i32 0
  %61 = load i64, i64* %60, align 8
  %62 = load i64*, i64** %7, align 8
  store i64 %61, i64* %62, align 8
  store i32 0, i32* %4, align 4
  br label %69

63:                                               ; preds = %47
  br label %64

64:                                               ; preds = %63, %46
  %65 = load i64, i64* %12, align 8
  %66 = add i64 %65, 1
  store i64 %66, i64* %12, align 8
  br label %29

67:                                               ; preds = %29
  %68 = load i32, i32* @EINVAL, align 4
  store i32 %68, i32* @errno, align 4
  store i32 -1, i32* %4, align 4
  br label %69

69:                                               ; preds = %67, %53, %27, %19
  %70 = load i32, i32* %4, align 4
  ret i32 %70
}

declare dso_local i64 @strtol(i8*, i8**, i32) #1

declare dso_local i64 @mfi_dcmd_command(i32, i32, %struct.mfi_ld_list*, i32, i32*, i32, i32*) #1

declare dso_local i64 @mfi_query_disk(i32, i64, %struct.mfi_query_disk*) #1

declare dso_local i64 @strcmp(i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
