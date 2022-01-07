; ModuleID = '/home/carl/AnghaBench/freebsd/sys/kern/extr_kern_shutdown.c_dump_init_header.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/kern/extr_kern_shutdown.c_dump_init_header.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i8* }
%struct.dumperinfo = type { %struct.TYPE_3__*, i32, i32 }
%struct.TYPE_3__ = type { i32 }
%struct.kerneldumpheader = type { i8*, i8*, i8*, i8*, i8*, i32, i32, i8*, i8*, i8*, i8*, i8*, i8*, i8* }

@MACHINE_ARCH = common dso_local global i8* null, align 8
@KERNELDUMPVERSION = common dso_local global i32 0, align 4
@time_second = common dso_local global i32 0, align 4
@prison0 = common dso_local global %struct.TYPE_4__ zeroinitializer, align 8
@version = common dso_local global i8* null, align 8
@panicstr = common dso_local global i8* null, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @dump_init_header(%struct.dumperinfo* %0, %struct.kerneldumpheader* %1, i8* %2, i32 %3, i32 %4) #0 {
  %6 = alloca %struct.dumperinfo*, align 8
  %7 = alloca %struct.kerneldumpheader*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i64, align 8
  store %struct.dumperinfo* %0, %struct.dumperinfo** %6, align 8
  store %struct.kerneldumpheader* %1, %struct.kerneldumpheader** %7, align 8
  store i8* %2, i8** %8, align 8
  store i32 %3, i32* %9, align 4
  store i32 %4, i32* %10, align 4
  %12 = load %struct.kerneldumpheader*, %struct.kerneldumpheader** %7, align 8
  %13 = call i32 @bzero(%struct.kerneldumpheader* %12, i32 104)
  %14 = load %struct.kerneldumpheader*, %struct.kerneldumpheader** %7, align 8
  %15 = getelementptr inbounds %struct.kerneldumpheader, %struct.kerneldumpheader* %14, i32 0, i32 0
  %16 = load i8*, i8** %15, align 8
  %17 = load i8*, i8** %8, align 8
  %18 = call i64 @strlcpy(i8* %16, i8* %17, i32 8)
  %19 = load %struct.kerneldumpheader*, %struct.kerneldumpheader** %7, align 8
  %20 = getelementptr inbounds %struct.kerneldumpheader, %struct.kerneldumpheader* %19, i32 0, i32 1
  %21 = load i8*, i8** %20, align 8
  %22 = load i8*, i8** @MACHINE_ARCH, align 8
  %23 = call i64 @strlcpy(i8* %21, i8* %22, i32 8)
  %24 = load i32, i32* @KERNELDUMPVERSION, align 4
  %25 = call i8* @htod32(i32 %24)
  %26 = load %struct.kerneldumpheader*, %struct.kerneldumpheader** %7, align 8
  %27 = getelementptr inbounds %struct.kerneldumpheader, %struct.kerneldumpheader* %26, i32 0, i32 13
  store i8* %25, i8** %27, align 8
  %28 = load i32, i32* %9, align 4
  %29 = call i8* @htod32(i32 %28)
  %30 = load %struct.kerneldumpheader*, %struct.kerneldumpheader** %7, align 8
  %31 = getelementptr inbounds %struct.kerneldumpheader, %struct.kerneldumpheader* %30, i32 0, i32 12
  store i8* %29, i8** %31, align 8
  %32 = load i32, i32* %10, align 4
  %33 = call i8* @htod64(i32 %32)
  %34 = load %struct.kerneldumpheader*, %struct.kerneldumpheader** %7, align 8
  %35 = getelementptr inbounds %struct.kerneldumpheader, %struct.kerneldumpheader* %34, i32 0, i32 10
  store i8* %33, i8** %35, align 8
  %36 = load %struct.kerneldumpheader*, %struct.kerneldumpheader** %7, align 8
  %37 = getelementptr inbounds %struct.kerneldumpheader, %struct.kerneldumpheader* %36, i32 0, i32 10
  %38 = load i8*, i8** %37, align 8
  %39 = load %struct.kerneldumpheader*, %struct.kerneldumpheader** %7, align 8
  %40 = getelementptr inbounds %struct.kerneldumpheader, %struct.kerneldumpheader* %39, i32 0, i32 11
  store i8* %38, i8** %40, align 8
  %41 = load i32, i32* @time_second, align 4
  %42 = call i8* @htod64(i32 %41)
  %43 = load %struct.kerneldumpheader*, %struct.kerneldumpheader** %7, align 8
  %44 = getelementptr inbounds %struct.kerneldumpheader, %struct.kerneldumpheader* %43, i32 0, i32 9
  store i8* %42, i8** %44, align 8
  %45 = load %struct.kerneldumpheader*, %struct.kerneldumpheader** %7, align 8
  %46 = getelementptr inbounds %struct.kerneldumpheader, %struct.kerneldumpheader* %45, i32 0, i32 8
  store i8* null, i8** %46, align 8
  %47 = load %struct.dumperinfo*, %struct.dumperinfo** %6, align 8
  %48 = getelementptr inbounds %struct.dumperinfo, %struct.dumperinfo* %47, i32 0, i32 1
  %49 = load i32, i32* %48, align 8
  %50 = call i8* @htod32(i32 %49)
  %51 = load %struct.kerneldumpheader*, %struct.kerneldumpheader** %7, align 8
  %52 = getelementptr inbounds %struct.kerneldumpheader, %struct.kerneldumpheader* %51, i32 0, i32 7
  store i8* %50, i8** %52, align 8
  %53 = load %struct.kerneldumpheader*, %struct.kerneldumpheader** %7, align 8
  %54 = getelementptr inbounds %struct.kerneldumpheader, %struct.kerneldumpheader* %53, i32 0, i32 2
  %55 = load i8*, i8** %54, align 8
  %56 = load i8*, i8** getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @prison0, i32 0, i32 0), align 8
  %57 = call i64 @strlcpy(i8* %55, i8* %56, i32 8)
  store i64 8, i64* %11, align 8
  %58 = load %struct.kerneldumpheader*, %struct.kerneldumpheader** %7, align 8
  %59 = getelementptr inbounds %struct.kerneldumpheader, %struct.kerneldumpheader* %58, i32 0, i32 3
  %60 = load i8*, i8** %59, align 8
  %61 = load i8*, i8** @version, align 8
  %62 = load i64, i64* %11, align 8
  %63 = trunc i64 %62 to i32
  %64 = call i64 @strlcpy(i8* %60, i8* %61, i32 %63)
  %65 = load i64, i64* %11, align 8
  %66 = icmp uge i64 %64, %65
  br i1 %66, label %67, label %74

67:                                               ; preds = %5
  %68 = load %struct.kerneldumpheader*, %struct.kerneldumpheader** %7, align 8
  %69 = getelementptr inbounds %struct.kerneldumpheader, %struct.kerneldumpheader* %68, i32 0, i32 3
  %70 = load i8*, i8** %69, align 8
  %71 = load i64, i64* %11, align 8
  %72 = sub i64 %71, 2
  %73 = getelementptr inbounds i8, i8* %70, i64 %72
  store i8 10, i8* %73, align 1
  br label %74

74:                                               ; preds = %67, %5
  %75 = load i8*, i8** @panicstr, align 8
  %76 = icmp ne i8* %75, null
  br i1 %76, label %77, label %83

77:                                               ; preds = %74
  %78 = load %struct.kerneldumpheader*, %struct.kerneldumpheader** %7, align 8
  %79 = getelementptr inbounds %struct.kerneldumpheader, %struct.kerneldumpheader* %78, i32 0, i32 4
  %80 = load i8*, i8** %79, align 8
  %81 = load i8*, i8** @panicstr, align 8
  %82 = call i64 @strlcpy(i8* %80, i8* %81, i32 8)
  br label %83

83:                                               ; preds = %77, %74
  %84 = load %struct.dumperinfo*, %struct.dumperinfo** %6, align 8
  %85 = getelementptr inbounds %struct.dumperinfo, %struct.dumperinfo* %84, i32 0, i32 0
  %86 = load %struct.TYPE_3__*, %struct.TYPE_3__** %85, align 8
  %87 = icmp ne %struct.TYPE_3__* %86, null
  br i1 %87, label %88, label %96

88:                                               ; preds = %83
  %89 = load %struct.dumperinfo*, %struct.dumperinfo** %6, align 8
  %90 = getelementptr inbounds %struct.dumperinfo, %struct.dumperinfo* %89, i32 0, i32 0
  %91 = load %struct.TYPE_3__*, %struct.TYPE_3__** %90, align 8
  %92 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %91, i32 0, i32 0
  %93 = load i32, i32* %92, align 4
  %94 = load %struct.kerneldumpheader*, %struct.kerneldumpheader** %7, align 8
  %95 = getelementptr inbounds %struct.kerneldumpheader, %struct.kerneldumpheader* %94, i32 0, i32 6
  store i32 %93, i32* %95, align 4
  br label %96

96:                                               ; preds = %88, %83
  %97 = load %struct.kerneldumpheader*, %struct.kerneldumpheader** %7, align 8
  %98 = call i32 @kerneldump_parity(%struct.kerneldumpheader* %97)
  %99 = load %struct.kerneldumpheader*, %struct.kerneldumpheader** %7, align 8
  %100 = getelementptr inbounds %struct.kerneldumpheader, %struct.kerneldumpheader* %99, i32 0, i32 5
  store i32 %98, i32* %100, align 8
  ret void
}

declare dso_local i32 @bzero(%struct.kerneldumpheader*, i32) #1

declare dso_local i64 @strlcpy(i8*, i8*, i32) #1

declare dso_local i8* @htod32(i32) #1

declare dso_local i8* @htod64(i32) #1

declare dso_local i32 @kerneldump_parity(%struct.kerneldumpheader*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
