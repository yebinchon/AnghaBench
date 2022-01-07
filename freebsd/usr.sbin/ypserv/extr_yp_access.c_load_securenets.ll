; ModuleID = '/home/carl/AnghaBench/freebsd/usr.sbin/ypserv/extr_yp_access.c_load_securenets.c'
source_filename = "/home/carl/AnghaBench/freebsd/usr.sbin/ypserv/extr_yp_access.c_load_securenets.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.securenet = type { %struct.securenet*, %struct.TYPE_4__, %struct.TYPE_3__ }
%struct.TYPE_4__ = type { i8* }
%struct.TYPE_3__ = type { i8* }
%struct.in_addr = type { i32 }

@MAXPATHLEN = common dso_local global i32 0, align 4
@securenets = common dso_local global %struct.securenet* null, align 8
@.str = private unnamed_addr constant [14 x i8] c"%s/securenets\00", align 1
@yp_dir = common dso_local global i8* null, align 8
@.str.1 = private unnamed_addr constant [2 x i8] c"r\00", align 1
@errno = common dso_local global i64 0, align 8
@ENOENT = common dso_local global i64 0, align 8
@INADDR_ANY = common dso_local global i8* null, align 8
@.str.2 = private unnamed_addr constant [21 x i8] c"fopen(%s) failed: %s\00", align 1
@LINEBUFSZ = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [5 x i8] c" \09\0D\0A\00", align 1
@.str.4 = private unnamed_addr constant [6 x i8] c"%s %s\00", align 1
@.str.5 = private unnamed_addr constant [37 x i8] c"badly formatted securenets entry: %s\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @load_securenets() #0 {
  %1 = alloca i32*, align 8
  %2 = alloca i8*, align 8
  %3 = alloca i64, align 8
  %4 = alloca [1026 x i8], align 16
  %5 = alloca %struct.securenet*, align 8
  %6 = alloca i32, align 4
  %7 = alloca [20 x i8], align 16
  %8 = alloca [20 x i8], align 16
  %9 = load i32, i32* @MAXPATHLEN, align 4
  %10 = add nsw i32 %9, 2
  %11 = zext i32 %10 to i64
  %12 = call i8* @llvm.stacksave()
  store i8* %12, i8** %2, align 8
  %13 = alloca i8, i64 %11, align 16
  store i64 %11, i64* %3, align 8
  br label %14

14:                                               ; preds = %17, %0
  %15 = load %struct.securenet*, %struct.securenet** @securenets, align 8
  %16 = icmp ne %struct.securenet* %15, null
  br i1 %16, label %17, label %24

17:                                               ; preds = %14
  %18 = load %struct.securenet*, %struct.securenet** @securenets, align 8
  %19 = getelementptr inbounds %struct.securenet, %struct.securenet* %18, i32 0, i32 0
  %20 = load %struct.securenet*, %struct.securenet** %19, align 8
  store %struct.securenet* %20, %struct.securenet** %5, align 8
  %21 = load %struct.securenet*, %struct.securenet** @securenets, align 8
  %22 = call i32 @free(%struct.securenet* %21)
  %23 = load %struct.securenet*, %struct.securenet** %5, align 8
  store %struct.securenet* %23, %struct.securenet** @securenets, align 8
  br label %14

24:                                               ; preds = %14
  %25 = load i32, i32* @MAXPATHLEN, align 4
  %26 = load i8*, i8** @yp_dir, align 8
  %27 = call i32 @snprintf(i8* %13, i32 %25, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str, i64 0, i64 0), i8* %26)
  %28 = call i32* @fopen(i8* %13, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.1, i64 0, i64 0))
  store i32* %28, i32** %1, align 8
  %29 = icmp eq i32* %28, null
  br i1 %29, label %30, label %51

30:                                               ; preds = %24
  %31 = load i64, i64* @errno, align 8
  %32 = load i64, i64* @ENOENT, align 8
  %33 = icmp eq i64 %31, %32
  br i1 %33, label %34, label %46

34:                                               ; preds = %30
  %35 = call %struct.securenet* @malloc(i32 24)
  store %struct.securenet* %35, %struct.securenet** @securenets, align 8
  %36 = load i8*, i8** @INADDR_ANY, align 8
  %37 = load %struct.securenet*, %struct.securenet** @securenets, align 8
  %38 = getelementptr inbounds %struct.securenet, %struct.securenet* %37, i32 0, i32 2
  %39 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %38, i32 0, i32 0
  store i8* %36, i8** %39, align 8
  %40 = load i8*, i8** @INADDR_ANY, align 8
  %41 = load %struct.securenet*, %struct.securenet** @securenets, align 8
  %42 = getelementptr inbounds %struct.securenet, %struct.securenet* %41, i32 0, i32 1
  %43 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %42, i32 0, i32 0
  store i8* %40, i8** %43, align 8
  %44 = load %struct.securenet*, %struct.securenet** @securenets, align 8
  %45 = getelementptr inbounds %struct.securenet, %struct.securenet* %44, i32 0, i32 0
  store %struct.securenet* null, %struct.securenet** %45, align 8
  store i32 1, i32* %6, align 4
  br label %112

46:                                               ; preds = %30
  %47 = load i64, i64* @errno, align 8
  %48 = call i32 @strerror(i64 %47)
  %49 = call i32 (i8*, i8*, ...) @yp_error(i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.2, i64 0, i64 0), i8* %13, i32 %48)
  %50 = call i32 @exit(i32 1) #4
  unreachable

51:                                               ; preds = %24
  store %struct.securenet* null, %struct.securenet** @securenets, align 8
  br label %52

52:                                               ; preds = %104, %99, %87, %76, %69, %51
  %53 = getelementptr inbounds [1026 x i8], [1026 x i8]* %4, i64 0, i64 0
  %54 = load i32, i32* @LINEBUFSZ, align 4
  %55 = load i32*, i32** %1, align 8
  %56 = call i64 @fgets(i8* %53, i32 %54, i32* %55)
  %57 = icmp ne i64 %56, 0
  br i1 %57, label %58, label %109

58:                                               ; preds = %52
  %59 = getelementptr inbounds [1026 x i8], [1026 x i8]* %4, i64 0, i64 0
  %60 = load i8, i8* %59, align 16
  %61 = sext i8 %60 to i32
  %62 = icmp eq i32 %61, 35
  br i1 %62, label %69, label %63

63:                                               ; preds = %58
  %64 = getelementptr inbounds [1026 x i8], [1026 x i8]* %4, i64 0, i64 0
  %65 = call i64 @strspn(i8* %64, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.3, i64 0, i64 0))
  %66 = getelementptr inbounds [1026 x i8], [1026 x i8]* %4, i64 0, i64 0
  %67 = call i64 @strlen(i8* %66)
  %68 = icmp eq i64 %65, %67
  br i1 %68, label %69, label %70

69:                                               ; preds = %63, %58
  br label %52

70:                                               ; preds = %63
  %71 = getelementptr inbounds [1026 x i8], [1026 x i8]* %4, i64 0, i64 0
  %72 = getelementptr inbounds [20 x i8], [20 x i8]* %7, i64 0, i64 0
  %73 = getelementptr inbounds [20 x i8], [20 x i8]* %8, i64 0, i64 0
  %74 = call i32 @sscanf(i8* %71, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.4, i64 0, i64 0), i8* %72, i8* %73)
  %75 = icmp slt i32 %74, 2
  br i1 %75, label %76, label %79

76:                                               ; preds = %70
  %77 = getelementptr inbounds [1026 x i8], [1026 x i8]* %4, i64 0, i64 0
  %78 = call i32 (i8*, i8*, ...) @yp_error(i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.5, i64 0, i64 0), i8* %77)
  br label %52

79:                                               ; preds = %70
  %80 = call %struct.securenet* @malloc(i32 24)
  store %struct.securenet* %80, %struct.securenet** %5, align 8
  %81 = bitcast [20 x i8]* %7 to i8*
  %82 = load %struct.securenet*, %struct.securenet** %5, align 8
  %83 = getelementptr inbounds %struct.securenet, %struct.securenet* %82, i32 0, i32 2
  %84 = bitcast %struct.TYPE_3__* %83 to %struct.in_addr*
  %85 = call i32 @inet_aton(i8* %81, %struct.in_addr* %84)
  %86 = icmp ne i32 %85, 0
  br i1 %86, label %92, label %87

87:                                               ; preds = %79
  %88 = getelementptr inbounds [20 x i8], [20 x i8]* %7, i64 0, i64 0
  %89 = call i32 (i8*, i8*, ...) @yp_error(i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.5, i64 0, i64 0), i8* %88)
  %90 = load %struct.securenet*, %struct.securenet** %5, align 8
  %91 = call i32 @free(%struct.securenet* %90)
  br label %52

92:                                               ; preds = %79
  %93 = bitcast [20 x i8]* %8 to i8*
  %94 = load %struct.securenet*, %struct.securenet** %5, align 8
  %95 = getelementptr inbounds %struct.securenet, %struct.securenet* %94, i32 0, i32 1
  %96 = bitcast %struct.TYPE_4__* %95 to %struct.in_addr*
  %97 = call i32 @inet_aton(i8* %93, %struct.in_addr* %96)
  %98 = icmp ne i32 %97, 0
  br i1 %98, label %104, label %99

99:                                               ; preds = %92
  %100 = getelementptr inbounds [20 x i8], [20 x i8]* %8, i64 0, i64 0
  %101 = call i32 (i8*, i8*, ...) @yp_error(i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.5, i64 0, i64 0), i8* %100)
  %102 = load %struct.securenet*, %struct.securenet** %5, align 8
  %103 = call i32 @free(%struct.securenet* %102)
  br label %52

104:                                              ; preds = %92
  %105 = load %struct.securenet*, %struct.securenet** @securenets, align 8
  %106 = load %struct.securenet*, %struct.securenet** %5, align 8
  %107 = getelementptr inbounds %struct.securenet, %struct.securenet* %106, i32 0, i32 0
  store %struct.securenet* %105, %struct.securenet** %107, align 8
  %108 = load %struct.securenet*, %struct.securenet** %5, align 8
  store %struct.securenet* %108, %struct.securenet** @securenets, align 8
  br label %52

109:                                              ; preds = %52
  %110 = load i32*, i32** %1, align 8
  %111 = call i32 @fclose(i32* %110)
  store i32 0, i32* %6, align 4
  br label %112

112:                                              ; preds = %109, %34
  %113 = load i8*, i8** %2, align 8
  call void @llvm.stackrestore(i8* %113)
  %114 = load i32, i32* %6, align 4
  switch i32 %114, label %116 [
    i32 0, label %115
    i32 1, label %115
  ]

115:                                              ; preds = %112, %112
  ret void

116:                                              ; preds = %112
  unreachable
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i32 @free(%struct.securenet*) #2

declare dso_local i32 @snprintf(i8*, i32, i8*, i8*) #2

declare dso_local i32* @fopen(i8*, i8*) #2

declare dso_local %struct.securenet* @malloc(i32) #2

declare dso_local i32 @yp_error(i8*, i8*, ...) #2

declare dso_local i32 @strerror(i64) #2

; Function Attrs: noreturn
declare dso_local i32 @exit(i32) #3

declare dso_local i64 @fgets(i8*, i32, i32*) #2

declare dso_local i64 @strspn(i8*, i8*) #2

declare dso_local i64 @strlen(i8*) #2

declare dso_local i32 @sscanf(i8*, i8*, i8*, i8*) #2

declare dso_local i32 @inet_aton(i8*, %struct.in_addr*) #2

declare dso_local i32 @fclose(i32*) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { noreturn "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #4 = { noreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
