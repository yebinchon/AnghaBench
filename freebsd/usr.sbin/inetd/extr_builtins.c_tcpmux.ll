; ModuleID = '/home/carl/AnghaBench/freebsd/usr.sbin/inetd/extr_builtins.c_tcpmux.c'
source_filename = "/home/carl/AnghaBench/freebsd/usr.sbin/inetd/extr_builtins.c_tcpmux.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.servtab = type { i8*, %struct.servtab* }

@MAX_SERV_LEN = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [30 x i8] c"-Error reading service name\0D\0A\00", align 1
@debug = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [25 x i8] c"tcpmux: someone wants %s\00", align 1
@.str.2 = private unnamed_addr constant [5 x i8] c"help\00", align 1
@servtab = common dso_local global %struct.servtab* null, align 8
@.str.3 = private unnamed_addr constant [3 x i8] c"\0D\0A\00", align 1
@.str.4 = private unnamed_addr constant [6 x i8] c"+Go\0D\0A\00", align 1
@.str.5 = private unnamed_addr constant [25 x i8] c"-Service not available\0D\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.servtab* @tcpmux(i32 %0) #0 {
  %2 = alloca %struct.servtab*, align 8
  %3 = alloca i32, align 4
  %4 = alloca %struct.servtab*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store i32 %0, i32* %3, align 4
  %9 = load i32, i32* @MAX_SERV_LEN, align 4
  %10 = add nsw i32 %9, 1
  %11 = zext i32 %10 to i64
  %12 = call i8* @llvm.stacksave()
  store i8* %12, i8** %5, align 8
  %13 = alloca i8, i64 %11, align 16
  store i64 %11, i64* %6, align 8
  %14 = load i32, i32* %3, align 4
  %15 = load i32, i32* @MAX_SERV_LEN, align 4
  %16 = call i32 @get_line(i32 %14, i8* %13, i32 %15)
  store i32 %16, i32* %7, align 4
  %17 = icmp slt i32 %16, 0
  br i1 %17, label %18, label %21

18:                                               ; preds = %1
  %19 = load i32, i32* %3, align 4
  %20 = call i32 @strwrite(i32 %19, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str, i64 0, i64 0))
  store %struct.servtab* null, %struct.servtab** %2, align 8
  store i32 1, i32* %8, align 4
  br label %92

21:                                               ; preds = %1
  %22 = load i32, i32* %7, align 4
  %23 = sext i32 %22 to i64
  %24 = getelementptr inbounds i8, i8* %13, i64 %23
  store i8 0, i8* %24, align 1
  %25 = load i64, i64* @debug, align 8
  %26 = icmp ne i64 %25, 0
  br i1 %26, label %27, label %29

27:                                               ; preds = %21
  %28 = call i32 @warnx(i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.1, i64 0, i64 0), i8* %13)
  br label %29

29:                                               ; preds = %27, %21
  %30 = call i32 @strcasecmp(i8* %13, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.2, i64 0, i64 0))
  %31 = icmp ne i32 %30, 0
  br i1 %31, label %59, label %32

32:                                               ; preds = %29
  %33 = load %struct.servtab*, %struct.servtab** @servtab, align 8
  store %struct.servtab* %33, %struct.servtab** %4, align 8
  br label %34

34:                                               ; preds = %54, %32
  %35 = load %struct.servtab*, %struct.servtab** %4, align 8
  %36 = icmp ne %struct.servtab* %35, null
  br i1 %36, label %37, label %58

37:                                               ; preds = %34
  %38 = load %struct.servtab*, %struct.servtab** %4, align 8
  %39 = call i32 @ISMUX(%struct.servtab* %38)
  %40 = icmp ne i32 %39, 0
  br i1 %40, label %42, label %41

41:                                               ; preds = %37
  br label %54

42:                                               ; preds = %37
  %43 = load i32, i32* %3, align 4
  %44 = load %struct.servtab*, %struct.servtab** %4, align 8
  %45 = getelementptr inbounds %struct.servtab, %struct.servtab* %44, i32 0, i32 0
  %46 = load i8*, i8** %45, align 8
  %47 = load %struct.servtab*, %struct.servtab** %4, align 8
  %48 = getelementptr inbounds %struct.servtab, %struct.servtab* %47, i32 0, i32 0
  %49 = load i8*, i8** %48, align 8
  %50 = call i32 @strlen(i8* %49)
  %51 = call i32 @write(i32 %43, i8* %46, i32 %50)
  %52 = load i32, i32* %3, align 4
  %53 = call i32 @strwrite(i32 %52, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.3, i64 0, i64 0))
  br label %54

54:                                               ; preds = %42, %41
  %55 = load %struct.servtab*, %struct.servtab** %4, align 8
  %56 = getelementptr inbounds %struct.servtab, %struct.servtab* %55, i32 0, i32 1
  %57 = load %struct.servtab*, %struct.servtab** %56, align 8
  store %struct.servtab* %57, %struct.servtab** %4, align 8
  br label %34

58:                                               ; preds = %34
  store %struct.servtab* null, %struct.servtab** %2, align 8
  store i32 1, i32* %8, align 4
  br label %92

59:                                               ; preds = %29
  %60 = load %struct.servtab*, %struct.servtab** @servtab, align 8
  store %struct.servtab* %60, %struct.servtab** %4, align 8
  br label %61

61:                                               ; preds = %85, %59
  %62 = load %struct.servtab*, %struct.servtab** %4, align 8
  %63 = icmp ne %struct.servtab* %62, null
  br i1 %63, label %64, label %89

64:                                               ; preds = %61
  %65 = load %struct.servtab*, %struct.servtab** %4, align 8
  %66 = call i32 @ISMUX(%struct.servtab* %65)
  %67 = icmp ne i32 %66, 0
  br i1 %67, label %69, label %68

68:                                               ; preds = %64
  br label %85

69:                                               ; preds = %64
  %70 = load %struct.servtab*, %struct.servtab** %4, align 8
  %71 = getelementptr inbounds %struct.servtab, %struct.servtab* %70, i32 0, i32 0
  %72 = load i8*, i8** %71, align 8
  %73 = call i32 @strcasecmp(i8* %13, i8* %72)
  %74 = icmp ne i32 %73, 0
  br i1 %74, label %84, label %75

75:                                               ; preds = %69
  %76 = load %struct.servtab*, %struct.servtab** %4, align 8
  %77 = call i64 @ISMUXPLUS(%struct.servtab* %76)
  %78 = icmp ne i64 %77, 0
  br i1 %78, label %79, label %82

79:                                               ; preds = %75
  %80 = load i32, i32* %3, align 4
  %81 = call i32 @strwrite(i32 %80, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.4, i64 0, i64 0))
  br label %82

82:                                               ; preds = %79, %75
  %83 = load %struct.servtab*, %struct.servtab** %4, align 8
  store %struct.servtab* %83, %struct.servtab** %2, align 8
  store i32 1, i32* %8, align 4
  br label %92

84:                                               ; preds = %69
  br label %85

85:                                               ; preds = %84, %68
  %86 = load %struct.servtab*, %struct.servtab** %4, align 8
  %87 = getelementptr inbounds %struct.servtab, %struct.servtab* %86, i32 0, i32 1
  %88 = load %struct.servtab*, %struct.servtab** %87, align 8
  store %struct.servtab* %88, %struct.servtab** %4, align 8
  br label %61

89:                                               ; preds = %61
  %90 = load i32, i32* %3, align 4
  %91 = call i32 @strwrite(i32 %90, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.5, i64 0, i64 0))
  store %struct.servtab* null, %struct.servtab** %2, align 8
  store i32 1, i32* %8, align 4
  br label %92

92:                                               ; preds = %89, %82, %58, %18
  %93 = load i8*, i8** %5, align 8
  call void @llvm.stackrestore(i8* %93)
  %94 = load %struct.servtab*, %struct.servtab** %2, align 8
  ret %struct.servtab* %94
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i32 @get_line(i32, i8*, i32) #2

declare dso_local i32 @strwrite(i32, i8*) #2

declare dso_local i32 @warnx(i8*, i8*) #2

declare dso_local i32 @strcasecmp(i8*, i8*) #2

declare dso_local i32 @ISMUX(%struct.servtab*) #2

declare dso_local i32 @write(i32, i8*, i32) #2

declare dso_local i32 @strlen(i8*) #2

declare dso_local i64 @ISMUXPLUS(%struct.servtab*) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
