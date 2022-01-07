; ModuleID = '/home/carl/AnghaBench/freebsd/sys/kern/extr_kern_shutdown.c_dump_write_headers.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/kern/extr_kern_shutdown.c_dump_write_headers.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dumperinfo = type { i64, i32 (%struct.dumperinfo*, %struct.kerneldumpheader*, i8*, i32)*, i64, i64, i8*, %struct.kerneldumpcrypto* }
%struct.kerneldumpcrypto = type { i8* }
%struct.kerneldumpheader = type { i32 }

@ENOMEM = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.dumperinfo*, %struct.kerneldumpheader*)* @dump_write_headers to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @dump_write_headers(%struct.dumperinfo* %0, %struct.kerneldumpheader* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.dumperinfo*, align 8
  %5 = alloca %struct.kerneldumpheader*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i64, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  store %struct.dumperinfo* %0, %struct.dumperinfo** %4, align 8
  store %struct.kerneldumpheader* %1, %struct.kerneldumpheader** %5, align 8
  store i64 4, i64* %8, align 8
  %12 = load i64, i64* %8, align 8
  %13 = load %struct.dumperinfo*, %struct.dumperinfo** %4, align 8
  %14 = getelementptr inbounds %struct.dumperinfo, %struct.dumperinfo* %13, i32 0, i32 0
  %15 = load i64, i64* %14, align 8
  %16 = icmp ugt i64 %12, %15
  br i1 %16, label %17, label %19

17:                                               ; preds = %2
  %18 = load i32, i32* @ENOMEM, align 4
  store i32 %18, i32* %3, align 4
  br label %110

19:                                               ; preds = %2
  store i8* null, i8** %7, align 8
  store i32 0, i32* %10, align 4
  %20 = load %struct.dumperinfo*, %struct.dumperinfo** %4, align 8
  %21 = getelementptr inbounds %struct.dumperinfo, %struct.dumperinfo* %20, i32 0, i32 1
  %22 = load i32 (%struct.dumperinfo*, %struct.kerneldumpheader*, i8*, i32)*, i32 (%struct.dumperinfo*, %struct.kerneldumpheader*, i8*, i32)** %21, align 8
  %23 = icmp ne i32 (%struct.dumperinfo*, %struct.kerneldumpheader*, i8*, i32)* %22, null
  br i1 %23, label %24, label %33

24:                                               ; preds = %19
  %25 = load %struct.dumperinfo*, %struct.dumperinfo** %4, align 8
  %26 = getelementptr inbounds %struct.dumperinfo, %struct.dumperinfo* %25, i32 0, i32 1
  %27 = load i32 (%struct.dumperinfo*, %struct.kerneldumpheader*, i8*, i32)*, i32 (%struct.dumperinfo*, %struct.kerneldumpheader*, i8*, i32)** %26, align 8
  %28 = load %struct.dumperinfo*, %struct.dumperinfo** %4, align 8
  %29 = load %struct.kerneldumpheader*, %struct.kerneldumpheader** %5, align 8
  %30 = load i8*, i8** %7, align 8
  %31 = load i32, i32* %10, align 4
  %32 = call i32 %27(%struct.dumperinfo* %28, %struct.kerneldumpheader* %29, i8* %30, i32 %31)
  store i32 %32, i32* %3, align 4
  br label %110

33:                                               ; preds = %19
  %34 = load i64, i64* %8, align 8
  %35 = load %struct.dumperinfo*, %struct.dumperinfo** %4, align 8
  %36 = getelementptr inbounds %struct.dumperinfo, %struct.dumperinfo* %35, i32 0, i32 0
  %37 = load i64, i64* %36, align 8
  %38 = icmp eq i64 %34, %37
  br i1 %38, label %39, label %42

39:                                               ; preds = %33
  %40 = load %struct.kerneldumpheader*, %struct.kerneldumpheader** %5, align 8
  %41 = bitcast %struct.kerneldumpheader* %40 to i8*
  store i8* %41, i8** %6, align 8
  br label %55

42:                                               ; preds = %33
  %43 = load %struct.dumperinfo*, %struct.dumperinfo** %4, align 8
  %44 = getelementptr inbounds %struct.dumperinfo, %struct.dumperinfo* %43, i32 0, i32 4
  %45 = load i8*, i8** %44, align 8
  store i8* %45, i8** %6, align 8
  %46 = load i8*, i8** %6, align 8
  %47 = load %struct.dumperinfo*, %struct.dumperinfo** %4, align 8
  %48 = getelementptr inbounds %struct.dumperinfo, %struct.dumperinfo* %47, i32 0, i32 0
  %49 = load i64, i64* %48, align 8
  %50 = call i32 @memset(i8* %46, i32 0, i64 %49)
  %51 = load i8*, i8** %6, align 8
  %52 = load %struct.kerneldumpheader*, %struct.kerneldumpheader** %5, align 8
  %53 = load i64, i64* %8, align 8
  %54 = call i32 @memcpy(i8* %51, %struct.kerneldumpheader* %52, i64 %53)
  br label %55

55:                                               ; preds = %42, %39
  %56 = load %struct.kerneldumpheader*, %struct.kerneldumpheader** %5, align 8
  %57 = getelementptr inbounds %struct.kerneldumpheader, %struct.kerneldumpheader* %56, i32 0, i32 0
  %58 = load i32, i32* %57, align 4
  %59 = call i32 @dtoh64(i32 %58)
  store i32 %59, i32* %9, align 4
  %60 = load %struct.dumperinfo*, %struct.dumperinfo** %4, align 8
  %61 = load i8*, i8** %6, align 8
  %62 = load %struct.dumperinfo*, %struct.dumperinfo** %4, align 8
  %63 = getelementptr inbounds %struct.dumperinfo, %struct.dumperinfo* %62, i32 0, i32 2
  %64 = load i64, i64* %63, align 8
  %65 = load %struct.dumperinfo*, %struct.dumperinfo** %4, align 8
  %66 = getelementptr inbounds %struct.dumperinfo, %struct.dumperinfo* %65, i32 0, i32 3
  %67 = load i64, i64* %66, align 8
  %68 = add i64 %64, %67
  %69 = load %struct.dumperinfo*, %struct.dumperinfo** %4, align 8
  %70 = getelementptr inbounds %struct.dumperinfo, %struct.dumperinfo* %69, i32 0, i32 0
  %71 = load i64, i64* %70, align 8
  %72 = mul i64 2, %71
  %73 = sub i64 %68, %72
  %74 = load i32, i32* %9, align 4
  %75 = sext i32 %74 to i64
  %76 = sub i64 %73, %75
  %77 = load i32, i32* %10, align 4
  %78 = sext i32 %77 to i64
  %79 = sub i64 %76, %78
  %80 = trunc i64 %79 to i32
  %81 = load %struct.dumperinfo*, %struct.dumperinfo** %4, align 8
  %82 = getelementptr inbounds %struct.dumperinfo, %struct.dumperinfo* %81, i32 0, i32 0
  %83 = load i64, i64* %82, align 8
  %84 = trunc i64 %83 to i32
  %85 = call i32 @dump_write(%struct.dumperinfo* %60, i8* %61, i32 0, i32 %80, i32 %84)
  store i32 %85, i32* %11, align 4
  %86 = load i32, i32* %11, align 4
  %87 = icmp eq i32 %86, 0
  br i1 %87, label %88, label %108

88:                                               ; preds = %55
  %89 = load %struct.dumperinfo*, %struct.dumperinfo** %4, align 8
  %90 = load i8*, i8** %6, align 8
  %91 = load %struct.dumperinfo*, %struct.dumperinfo** %4, align 8
  %92 = getelementptr inbounds %struct.dumperinfo, %struct.dumperinfo* %91, i32 0, i32 2
  %93 = load i64, i64* %92, align 8
  %94 = load %struct.dumperinfo*, %struct.dumperinfo** %4, align 8
  %95 = getelementptr inbounds %struct.dumperinfo, %struct.dumperinfo* %94, i32 0, i32 3
  %96 = load i64, i64* %95, align 8
  %97 = add i64 %93, %96
  %98 = load %struct.dumperinfo*, %struct.dumperinfo** %4, align 8
  %99 = getelementptr inbounds %struct.dumperinfo, %struct.dumperinfo* %98, i32 0, i32 0
  %100 = load i64, i64* %99, align 8
  %101 = sub i64 %97, %100
  %102 = trunc i64 %101 to i32
  %103 = load %struct.dumperinfo*, %struct.dumperinfo** %4, align 8
  %104 = getelementptr inbounds %struct.dumperinfo, %struct.dumperinfo* %103, i32 0, i32 0
  %105 = load i64, i64* %104, align 8
  %106 = trunc i64 %105 to i32
  %107 = call i32 @dump_write(%struct.dumperinfo* %89, i8* %90, i32 0, i32 %102, i32 %106)
  store i32 %107, i32* %11, align 4
  br label %108

108:                                              ; preds = %88, %55
  %109 = load i32, i32* %11, align 4
  store i32 %109, i32* %3, align 4
  br label %110

110:                                              ; preds = %108, %24, %17
  %111 = load i32, i32* %3, align 4
  ret i32 %111
}

declare dso_local i32 @memset(i8*, i32, i64) #1

declare dso_local i32 @memcpy(i8*, %struct.kerneldumpheader*, i64) #1

declare dso_local i32 @dtoh64(i32) #1

declare dso_local i32 @dump_write(%struct.dumperinfo*, i8*, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
