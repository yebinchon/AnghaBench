; ModuleID = '/home/carl/AnghaBench/freebsd/sys/security/mac_veriexec_parser/extr_mac_veriexec_parser.c_read_manifest.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/security/mac_veriexec_parser/extr_mac_veriexec_parser.c_read_manifest.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i32 }
%struct.nameidata = type { i32 }
%struct.vattr = type { i64 }

@curthread = common dso_local global %struct.TYPE_4__* null, align 8
@M_VERIEXEC = common dso_local global i32 0, align 4
@M_WAITOK = common dso_local global i32 0, align 4
@UIO_READ = common dso_local global i32 0, align 4
@UIO_SYSSPACE = common dso_local global i32 0, align 4
@IO_NODELOCKED = common dso_local global i32 0, align 4
@NOCRED = common dso_local global i32 0, align 4
@FREAD = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [44 x i8] c"Manifest hash doesn't match expected value!\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i8* (i8*, i8*)* @read_manifest to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i8* @read_manifest(i8* %0, i8* %1) #0 {
  %3 = alloca i8*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca %struct.nameidata, align 4
  %7 = alloca %struct.vattr, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i64, align 8
  %10 = alloca i64, align 8
  %11 = alloca i32, align 4
  store i8* %0, i8** %4, align 8
  store i8* %1, i8** %5, align 8
  store i8* null, i8** %8, align 8
  store i64 0, i64* %9, align 8
  %12 = load i8*, i8** %4, align 8
  %13 = call i32 @open_file(i8* %12, %struct.nameidata* %6)
  store i32 %13, i32* %11, align 4
  %14 = load i32, i32* %11, align 4
  %15 = icmp ne i32 %14, 0
  br i1 %15, label %16, label %17

16:                                               ; preds = %2
  br label %91

17:                                               ; preds = %2
  %18 = getelementptr inbounds %struct.nameidata, %struct.nameidata* %6, i32 0, i32 0
  %19 = load i32, i32* %18, align 4
  %20 = load %struct.TYPE_4__*, %struct.TYPE_4__** @curthread, align 8
  %21 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 4
  %23 = call i32 @VOP_GETATTR(i32 %19, %struct.vattr* %7, i32 %22)
  store i32 %23, i32* %11, align 4
  %24 = load i32, i32* %11, align 4
  %25 = icmp ne i32 %24, 0
  br i1 %25, label %26, label %27

26:                                               ; preds = %17
  br label %91

27:                                               ; preds = %17
  %28 = getelementptr inbounds %struct.vattr, %struct.vattr* %7, i32 0, i32 0
  %29 = load i64, i64* %28, align 8
  %30 = add i64 %29, 1
  %31 = load i32, i32* @M_VERIEXEC, align 4
  %32 = load i32, i32* @M_WAITOK, align 4
  %33 = call i64 @malloc(i64 %30, i32 %31, i32 %32)
  %34 = inttoptr i64 %33 to i8*
  store i8* %34, i8** %8, align 8
  br label %35

35:                                               ; preds = %61, %27
  %36 = load i64, i64* %9, align 8
  %37 = getelementptr inbounds %struct.vattr, %struct.vattr* %7, i32 0, i32 0
  %38 = load i64, i64* %37, align 8
  %39 = icmp ult i64 %36, %38
  br i1 %39, label %40, label %66

40:                                               ; preds = %35
  %41 = load i32, i32* @UIO_READ, align 4
  %42 = getelementptr inbounds %struct.nameidata, %struct.nameidata* %6, i32 0, i32 0
  %43 = load i32, i32* %42, align 4
  %44 = load i8*, i8** %8, align 8
  %45 = getelementptr inbounds %struct.vattr, %struct.vattr* %7, i32 0, i32 0
  %46 = load i64, i64* %45, align 8
  %47 = load i64, i64* %9, align 8
  %48 = sub i64 %46, %47
  %49 = load i64, i64* %9, align 8
  %50 = load i32, i32* @UIO_SYSSPACE, align 4
  %51 = load i32, i32* @IO_NODELOCKED, align 4
  %52 = load %struct.TYPE_4__*, %struct.TYPE_4__** @curthread, align 8
  %53 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %52, i32 0, i32 0
  %54 = load i32, i32* %53, align 4
  %55 = load i32, i32* @NOCRED, align 4
  %56 = load %struct.TYPE_4__*, %struct.TYPE_4__** @curthread, align 8
  %57 = call i32 @vn_rdwr(i32 %41, i32 %43, i8* %44, i64 %48, i64 %49, i32 %50, i32 %51, i32 %54, i32 %55, i64* %10, %struct.TYPE_4__* %56)
  store i32 %57, i32* %11, align 4
  %58 = load i32, i32* %11, align 4
  %59 = icmp ne i32 %58, 0
  br i1 %59, label %60, label %61

60:                                               ; preds = %40
  br label %91

61:                                               ; preds = %40
  %62 = getelementptr inbounds %struct.vattr, %struct.vattr* %7, i32 0, i32 0
  %63 = load i64, i64* %62, align 8
  %64 = load i64, i64* %10, align 8
  %65 = sub i64 %63, %64
  store i64 %65, i64* %9, align 8
  br label %35

66:                                               ; preds = %35
  %67 = load i8*, i8** %8, align 8
  %68 = load i64, i64* %9, align 8
  %69 = getelementptr inbounds i8, i8* %67, i64 %68
  store i8 0, i8* %69, align 1
  %70 = getelementptr inbounds %struct.nameidata, %struct.nameidata* %6, i32 0, i32 0
  %71 = load i32, i32* %70, align 4
  %72 = call i32 @VOP_UNLOCK(i32 %71, i32 0)
  %73 = getelementptr inbounds %struct.nameidata, %struct.nameidata* %6, i32 0, i32 0
  %74 = load i32, i32* %73, align 4
  %75 = load i32, i32* @FREAD, align 4
  %76 = load %struct.TYPE_4__*, %struct.TYPE_4__** @curthread, align 8
  %77 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %76, i32 0, i32 0
  %78 = load i32, i32* %77, align 4
  %79 = load %struct.TYPE_4__*, %struct.TYPE_4__** @curthread, align 8
  %80 = call i32 @vn_close(i32 %74, i32 %75, i32 %78, %struct.TYPE_4__* %79)
  %81 = load i8*, i8** %8, align 8
  %82 = getelementptr inbounds %struct.vattr, %struct.vattr* %7, i32 0, i32 0
  %83 = load i64, i64* %82, align 8
  %84 = load i8*, i8** %5, align 8
  %85 = call i64 @verify_digest(i8* %81, i64 %83, i8* %84)
  %86 = icmp ne i64 %85, 0
  br i1 %86, label %87, label %89

87:                                               ; preds = %66
  %88 = call i32 @panic(i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str, i64 0, i64 0))
  br label %89

89:                                               ; preds = %87, %66
  %90 = load i8*, i8** %8, align 8
  store i8* %90, i8** %3, align 8
  br label %99

91:                                               ; preds = %60, %26, %16
  %92 = load i8*, i8** %8, align 8
  %93 = icmp ne i8* %92, null
  br i1 %93, label %94, label %98

94:                                               ; preds = %91
  %95 = load i8*, i8** %8, align 8
  %96 = load i32, i32* @M_VERIEXEC, align 4
  %97 = call i32 @free(i8* %95, i32 %96)
  br label %98

98:                                               ; preds = %94, %91
  store i8* null, i8** %3, align 8
  br label %99

99:                                               ; preds = %98, %89
  %100 = load i8*, i8** %3, align 8
  ret i8* %100
}

declare dso_local i32 @open_file(i8*, %struct.nameidata*) #1

declare dso_local i32 @VOP_GETATTR(i32, %struct.vattr*, i32) #1

declare dso_local i64 @malloc(i64, i32, i32) #1

declare dso_local i32 @vn_rdwr(i32, i32, i8*, i64, i64, i32, i32, i32, i32, i64*, %struct.TYPE_4__*) #1

declare dso_local i32 @VOP_UNLOCK(i32, i32) #1

declare dso_local i32 @vn_close(i32, i32, i32, %struct.TYPE_4__*) #1

declare dso_local i64 @verify_digest(i8*, i64, i8*) #1

declare dso_local i32 @panic(i8*) #1

declare dso_local i32 @free(i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
