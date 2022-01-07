; ModuleID = '/home/carl/AnghaBench/freebsd/usr.sbin/ppp/extr_physical.c_physical_Login.c'
source_filename = "/home/carl/AnghaBench/freebsd/usr.sbin/ppp/extr_physical.c_physical_Login.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.physical = type { i64, i32, %struct.TYPE_4__, %struct.TYPE_3__* }
%struct.TYPE_4__ = type { i8* }
%struct.TYPE_3__ = type { i64 }
%struct.utmpx = type { i32, i32, i32, i32, i32, i32 }

@PHYS_DIRECT = common dso_local global i64 0, align 8
@USER_PROCESS = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [6 x i8] c"%xppp\00", align 1
@TCP_DEVICE = common dso_local global i64 0, align 8
@UDP_DEVICE = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [8 x i8] c"CONNECT\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @physical_Login(%struct.physical* %0, i8* %1) #0 {
  %3 = alloca %struct.physical*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca %struct.utmpx, align 4
  %6 = alloca i8*, align 8
  %7 = alloca i8*, align 8
  store %struct.physical* %0, %struct.physical** %3, align 8
  store i8* %1, i8** %4, align 8
  %8 = load %struct.physical*, %struct.physical** %3, align 8
  %9 = getelementptr inbounds %struct.physical, %struct.physical* %8, i32 0, i32 0
  %10 = load i64, i64* %9, align 8
  %11 = load i64, i64* @PHYS_DIRECT, align 8
  %12 = icmp eq i64 %10, %11
  br i1 %12, label %13, label %97

13:                                               ; preds = %2
  %14 = load %struct.physical*, %struct.physical** %3, align 8
  %15 = getelementptr inbounds %struct.physical, %struct.physical* %14, i32 0, i32 2
  %16 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %15, i32 0, i32 0
  %17 = load i8*, i8** %16, align 8
  %18 = load i8, i8* %17, align 1
  %19 = sext i8 %18 to i32
  %20 = icmp ne i32 %19, 0
  br i1 %20, label %21, label %97

21:                                               ; preds = %13
  %22 = load %struct.physical*, %struct.physical** %3, align 8
  %23 = getelementptr inbounds %struct.physical, %struct.physical* %22, i32 0, i32 1
  %24 = load i32, i32* %23, align 8
  %25 = icmp ne i32 %24, 0
  br i1 %25, label %97, label %26

26:                                               ; preds = %21
  %27 = call i32 @memset(%struct.utmpx* %5, i32 0, i32 24)
  %28 = load i32, i32* @USER_PROCESS, align 4
  %29 = getelementptr inbounds %struct.utmpx, %struct.utmpx* %5, i32 0, i32 5
  store i32 %28, i32* %29, align 4
  %30 = getelementptr inbounds %struct.utmpx, %struct.utmpx* %5, i32 0, i32 4
  %31 = call i32 @gettimeofday(i32* %30, i32* null)
  %32 = getelementptr inbounds %struct.utmpx, %struct.utmpx* %5, i32 0, i32 3
  %33 = load i32, i32* %32, align 4
  %34 = call i64 (...) @getpid()
  %35 = trunc i64 %34 to i32
  %36 = call i32 @snprintf(i32 %33, i32 4, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str, i64 0, i64 0), i32 %35)
  %37 = getelementptr inbounds %struct.utmpx, %struct.utmpx* %5, i32 0, i32 2
  %38 = load i32, i32* %37, align 4
  %39 = load i8*, i8** %4, align 8
  %40 = call i32 @strncpy(i32 %38, i8* %39, i32 4)
  %41 = load %struct.physical*, %struct.physical** %3, align 8
  %42 = getelementptr inbounds %struct.physical, %struct.physical* %41, i32 0, i32 3
  %43 = load %struct.TYPE_3__*, %struct.TYPE_3__** %42, align 8
  %44 = icmp ne %struct.TYPE_3__* %43, null
  br i1 %44, label %45, label %77

45:                                               ; preds = %26
  %46 = load %struct.physical*, %struct.physical** %3, align 8
  %47 = getelementptr inbounds %struct.physical, %struct.physical* %46, i32 0, i32 3
  %48 = load %struct.TYPE_3__*, %struct.TYPE_3__** %47, align 8
  %49 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %48, i32 0, i32 0
  %50 = load i64, i64* %49, align 8
  %51 = load i64, i64* @TCP_DEVICE, align 8
  %52 = icmp eq i64 %50, %51
  br i1 %52, label %61, label %53

53:                                               ; preds = %45
  %54 = load %struct.physical*, %struct.physical** %3, align 8
  %55 = getelementptr inbounds %struct.physical, %struct.physical* %54, i32 0, i32 3
  %56 = load %struct.TYPE_3__*, %struct.TYPE_3__** %55, align 8
  %57 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %56, i32 0, i32 0
  %58 = load i64, i64* %57, align 8
  %59 = load i64, i64* @UDP_DEVICE, align 8
  %60 = icmp eq i64 %58, %59
  br i1 %60, label %61, label %77

61:                                               ; preds = %53, %45
  %62 = getelementptr inbounds %struct.utmpx, %struct.utmpx* %5, i32 0, i32 0
  %63 = load i32, i32* %62, align 4
  %64 = load %struct.physical*, %struct.physical** %3, align 8
  %65 = getelementptr inbounds %struct.physical, %struct.physical* %64, i32 0, i32 2
  %66 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %65, i32 0, i32 0
  %67 = load i8*, i8** %66, align 8
  %68 = call i32 @strncpy(i32 %63, i8* %67, i32 4)
  %69 = getelementptr inbounds %struct.utmpx, %struct.utmpx* %5, i32 0, i32 0
  %70 = load i32, i32* %69, align 4
  %71 = call i8* @memchr(i32 %70, i8 signext 58, i32 4)
  store i8* %71, i8** %7, align 8
  %72 = load i8*, i8** %7, align 8
  %73 = icmp ne i8* %72, null
  br i1 %73, label %74, label %76

74:                                               ; preds = %61
  %75 = load i8*, i8** %7, align 8
  store i8 0, i8* %75, align 1
  br label %76

76:                                               ; preds = %74, %61
  br label %85

77:                                               ; preds = %53, %26
  %78 = getelementptr inbounds %struct.utmpx, %struct.utmpx* %5, i32 0, i32 1
  %79 = load i32, i32* %78, align 4
  %80 = load %struct.physical*, %struct.physical** %3, align 8
  %81 = getelementptr inbounds %struct.physical, %struct.physical* %80, i32 0, i32 2
  %82 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %81, i32 0, i32 0
  %83 = load i8*, i8** %82, align 8
  %84 = call i32 @strncpy(i32 %79, i8* %83, i32 4)
  br label %85

85:                                               ; preds = %77, %76
  %86 = call i8* @getenv(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.1, i64 0, i64 0))
  store i8* %86, i8** %6, align 8
  %87 = icmp ne i8* %86, null
  br i1 %87, label %88, label %93

88:                                               ; preds = %85
  %89 = getelementptr inbounds %struct.utmpx, %struct.utmpx* %5, i32 0, i32 0
  %90 = load i32, i32* %89, align 4
  %91 = load i8*, i8** %6, align 8
  %92 = call i32 @strncpy(i32 %90, i8* %91, i32 4)
  br label %93

93:                                               ; preds = %88, %85
  %94 = call i32 @ID0login(%struct.utmpx* %5)
  %95 = load %struct.physical*, %struct.physical** %3, align 8
  %96 = getelementptr inbounds %struct.physical, %struct.physical* %95, i32 0, i32 1
  store i32 1, i32* %96, align 8
  br label %97

97:                                               ; preds = %93, %21, %13, %2
  ret void
}

declare dso_local i32 @memset(%struct.utmpx*, i32, i32) #1

declare dso_local i32 @gettimeofday(i32*, i32*) #1

declare dso_local i32 @snprintf(i32, i32, i8*, i32) #1

declare dso_local i64 @getpid(...) #1

declare dso_local i32 @strncpy(i32, i8*, i32) #1

declare dso_local i8* @memchr(i32, i8 signext, i32) #1

declare dso_local i8* @getenv(i8*) #1

declare dso_local i32 @ID0login(%struct.utmpx*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
