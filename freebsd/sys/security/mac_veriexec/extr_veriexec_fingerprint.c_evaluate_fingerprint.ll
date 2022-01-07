; ModuleID = '/home/carl/AnghaBench/freebsd/sys/security/mac_veriexec/extr_veriexec_fingerprint.c_evaluate_fingerprint.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/security/mac_veriexec/extr_veriexec_fingerprint.c_evaluate_fingerprint.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.vnode = type { i32 }
%struct.mac_veriexec_file_info = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i64, i64, i32 (i8*, i8*)*, i32 (i8*, i8*, i64)*, i32 (i8*)* }
%struct.thread = type { i32 }

@EINVAL = common dso_local global i32 0, align 4
@PAGE_SIZE = common dso_local global i64 0, align 8
@M_VERIEXEC = common dso_local global i32 0, align 4
@M_WAITOK = common dso_local global i32 0, align 4
@UIO_READ = common dso_local global i32 0, align 4
@UIO_SYSSPACE = common dso_local global i32 0, align 4
@IO_NODELOCKED = common dso_local global i32 0, align 4
@NOCRED = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.vnode*, %struct.mac_veriexec_file_info*, %struct.thread*, i64, i8*)* @evaluate_fingerprint to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @evaluate_fingerprint(%struct.vnode* %0, %struct.mac_veriexec_file_info* %1, %struct.thread* %2, i64 %3, i8* %4) #0 {
  %6 = alloca %struct.vnode*, align 8
  %7 = alloca %struct.mac_veriexec_file_info*, align 8
  %8 = alloca %struct.thread*, align 8
  %9 = alloca i64, align 8
  %10 = alloca i8*, align 8
  %11 = alloca i8*, align 8
  %12 = alloca i8*, align 8
  %13 = alloca i64, align 8
  %14 = alloca i64, align 8
  %15 = alloca i64, align 8
  %16 = alloca i64, align 8
  %17 = alloca i32, align 4
  store %struct.vnode* %0, %struct.vnode** %6, align 8
  store %struct.mac_veriexec_file_info* %1, %struct.mac_veriexec_file_info** %7, align 8
  store %struct.thread* %2, %struct.thread** %8, align 8
  store i64 %3, i64* %9, align 8
  store i8* %4, i8** %10, align 8
  %18 = load i32, i32* @EINVAL, align 4
  store i32 %18, i32* %17, align 4
  %19 = load i64, i64* @PAGE_SIZE, align 8
  %20 = load i32, i32* @M_VERIEXEC, align 4
  %21 = load i32, i32* @M_WAITOK, align 4
  %22 = call i8* @malloc(i64 %19, i32 %20, i32 %21)
  store i8* %22, i8** %11, align 8
  %23 = load %struct.mac_veriexec_file_info*, %struct.mac_veriexec_file_info** %7, align 8
  %24 = getelementptr inbounds %struct.mac_veriexec_file_info, %struct.mac_veriexec_file_info* %23, i32 0, i32 0
  %25 = load %struct.TYPE_2__*, %struct.TYPE_2__** %24, align 8
  %26 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %25, i32 0, i32 0
  %27 = load i64, i64* %26, align 8
  %28 = load i32, i32* @M_VERIEXEC, align 4
  %29 = load i32, i32* @M_WAITOK, align 4
  %30 = call i8* @malloc(i64 %27, i32 %28, i32 %29)
  store i8* %30, i8** %12, align 8
  %31 = load %struct.mac_veriexec_file_info*, %struct.mac_veriexec_file_info** %7, align 8
  %32 = getelementptr inbounds %struct.mac_veriexec_file_info, %struct.mac_veriexec_file_info* %31, i32 0, i32 0
  %33 = load %struct.TYPE_2__*, %struct.TYPE_2__** %32, align 8
  %34 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %33, i32 0, i32 4
  %35 = load i32 (i8*)*, i32 (i8*)** %34, align 8
  %36 = load i8*, i8** %12, align 8
  %37 = call i32 %35(i8* %36)
  store i64 0, i64* %13, align 8
  br label %38

38:                                               ; preds = %84, %5
  %39 = load i64, i64* %13, align 8
  %40 = load i64, i64* %9, align 8
  %41 = icmp ult i64 %39, %40
  br i1 %41, label %42, label %88

42:                                               ; preds = %38
  %43 = load i64, i64* %13, align 8
  %44 = load i64, i64* @PAGE_SIZE, align 8
  %45 = add i64 %43, %44
  %46 = load i64, i64* %9, align 8
  %47 = icmp ugt i64 %45, %46
  br i1 %47, label %48, label %52

48:                                               ; preds = %42
  %49 = load i64, i64* %9, align 8
  %50 = load i64, i64* %13, align 8
  %51 = sub i64 %49, %50
  store i64 %51, i64* %14, align 8
  br label %54

52:                                               ; preds = %42
  %53 = load i64, i64* @PAGE_SIZE, align 8
  store i64 %53, i64* %14, align 8
  br label %54

54:                                               ; preds = %52, %48
  %55 = load i32, i32* @UIO_READ, align 4
  %56 = load %struct.vnode*, %struct.vnode** %6, align 8
  %57 = load i8*, i8** %11, align 8
  %58 = load i64, i64* %14, align 8
  %59 = load i64, i64* %13, align 8
  %60 = load i32, i32* @UIO_SYSSPACE, align 4
  %61 = load i32, i32* @IO_NODELOCKED, align 4
  %62 = load %struct.thread*, %struct.thread** %8, align 8
  %63 = getelementptr inbounds %struct.thread, %struct.thread* %62, i32 0, i32 0
  %64 = load i32, i32* %63, align 4
  %65 = load i32, i32* @NOCRED, align 4
  %66 = load %struct.thread*, %struct.thread** %8, align 8
  %67 = call i32 @vn_rdwr_inchunks(i32 %55, %struct.vnode* %56, i8* %57, i64 %58, i64 %59, i32 %60, i32 %61, i32 %64, i32 %65, i64* %16, %struct.thread* %66)
  store i32 %67, i32* %17, align 4
  %68 = load i32, i32* %17, align 4
  %69 = icmp ne i32 %68, 0
  br i1 %69, label %70, label %71

70:                                               ; preds = %54
  br label %97

71:                                               ; preds = %54
  %72 = load i64, i64* %14, align 8
  %73 = load i64, i64* %16, align 8
  %74 = sub i64 %72, %73
  store i64 %74, i64* %15, align 8
  %75 = load %struct.mac_veriexec_file_info*, %struct.mac_veriexec_file_info** %7, align 8
  %76 = getelementptr inbounds %struct.mac_veriexec_file_info, %struct.mac_veriexec_file_info* %75, i32 0, i32 0
  %77 = load %struct.TYPE_2__*, %struct.TYPE_2__** %76, align 8
  %78 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %77, i32 0, i32 3
  %79 = load i32 (i8*, i8*, i64)*, i32 (i8*, i8*, i64)** %78, align 8
  %80 = load i8*, i8** %12, align 8
  %81 = load i8*, i8** %11, align 8
  %82 = load i64, i64* %15, align 8
  %83 = call i32 %79(i8* %80, i8* %81, i64 %82)
  br label %84

84:                                               ; preds = %71
  %85 = load i64, i64* %15, align 8
  %86 = load i64, i64* %13, align 8
  %87 = add i64 %86, %85
  store i64 %87, i64* %13, align 8
  br label %38

88:                                               ; preds = %38
  %89 = load %struct.mac_veriexec_file_info*, %struct.mac_veriexec_file_info** %7, align 8
  %90 = getelementptr inbounds %struct.mac_veriexec_file_info, %struct.mac_veriexec_file_info* %89, i32 0, i32 0
  %91 = load %struct.TYPE_2__*, %struct.TYPE_2__** %90, align 8
  %92 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %91, i32 0, i32 2
  %93 = load i32 (i8*, i8*)*, i32 (i8*, i8*)** %92, align 8
  %94 = load i8*, i8** %10, align 8
  %95 = load i8*, i8** %12, align 8
  %96 = call i32 %93(i8* %94, i8* %95)
  br label %97

97:                                               ; preds = %88, %70
  %98 = load i8*, i8** %12, align 8
  %99 = load i32, i32* @M_VERIEXEC, align 4
  %100 = call i32 @free(i8* %98, i32 %99)
  %101 = load i8*, i8** %11, align 8
  %102 = load i32, i32* @M_VERIEXEC, align 4
  %103 = call i32 @free(i8* %101, i32 %102)
  %104 = load i32, i32* %17, align 4
  ret i32 %104
}

declare dso_local i8* @malloc(i64, i32, i32) #1

declare dso_local i32 @vn_rdwr_inchunks(i32, %struct.vnode*, i8*, i64, i64, i32, i32, i32, i32, i64*, %struct.thread*) #1

declare dso_local i32 @free(i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
