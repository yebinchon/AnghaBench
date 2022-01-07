; ModuleID = '/home/carl/AnghaBench/freebsd/usr.bin/getent/extr_getent.c_utmpx.c'
source_filename = "/home/carl/AnghaBench/freebsd/usr.bin/getent/extr_getent.c_utmpx.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.utmpx = type { i32 }

@RV_OK = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [7 x i8] c"active\00", align 1
@UTXDB_ACTIVE = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [10 x i8] c"lastlogin\00", align 1
@UTXDB_LASTLOGIN = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [4 x i8] c"log\00", align 1
@UTXDB_LOG = common dso_local global i32 0, align 4
@RV_USAGE = common dso_local global i32 0, align 4
@stderr = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [53 x i8] c"Usage: %s utmpx active | lastlogin | log [filename]\0A\00", align 1
@RV_NOTFOUND = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i8**)* @utmpx to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @utmpx(i32 %0, i8** %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i8**, align 8
  %6 = alloca %struct.utmpx*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store i32 %0, i32* %4, align 4
  store i8** %1, i8*** %5, align 8
  store i8* null, i8** %7, align 8
  %10 = load i32, i32* @RV_OK, align 4
  store i32 %10, i32* %8, align 4
  store i32 0, i32* %9, align 4
  %11 = load i32, i32* %4, align 4
  %12 = icmp sgt i32 %11, 1
  %13 = zext i1 %12 to i32
  %14 = call i32 @assert(i32 %13)
  %15 = load i8**, i8*** %5, align 8
  %16 = icmp ne i8** %15, null
  %17 = zext i1 %16 to i32
  %18 = call i32 @assert(i32 %17)
  %19 = load i32, i32* %4, align 4
  %20 = icmp eq i32 %19, 3
  br i1 %20, label %24, label %21

21:                                               ; preds = %2
  %22 = load i32, i32* %4, align 4
  %23 = icmp eq i32 %22, 4
  br i1 %23, label %24, label %60

24:                                               ; preds = %21, %2
  %25 = load i8**, i8*** %5, align 8
  %26 = getelementptr inbounds i8*, i8** %25, i64 2
  %27 = load i8*, i8** %26, align 8
  %28 = call i64 @strcmp(i8* %27, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str, i64 0, i64 0))
  %29 = icmp eq i64 %28, 0
  br i1 %29, label %30, label %32

30:                                               ; preds = %24
  %31 = load i32, i32* @UTXDB_ACTIVE, align 4
  store i32 %31, i32* %9, align 4
  br label %52

32:                                               ; preds = %24
  %33 = load i8**, i8*** %5, align 8
  %34 = getelementptr inbounds i8*, i8** %33, i64 2
  %35 = load i8*, i8** %34, align 8
  %36 = call i64 @strcmp(i8* %35, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.1, i64 0, i64 0))
  %37 = icmp eq i64 %36, 0
  br i1 %37, label %38, label %40

38:                                               ; preds = %32
  %39 = load i32, i32* @UTXDB_LASTLOGIN, align 4
  store i32 %39, i32* %9, align 4
  br label %51

40:                                               ; preds = %32
  %41 = load i8**, i8*** %5, align 8
  %42 = getelementptr inbounds i8*, i8** %41, i64 2
  %43 = load i8*, i8** %42, align 8
  %44 = call i64 @strcmp(i8* %43, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.2, i64 0, i64 0))
  %45 = icmp eq i64 %44, 0
  br i1 %45, label %46, label %48

46:                                               ; preds = %40
  %47 = load i32, i32* @UTXDB_LOG, align 4
  store i32 %47, i32* %9, align 4
  br label %50

48:                                               ; preds = %40
  %49 = load i32, i32* @RV_USAGE, align 4
  store i32 %49, i32* %8, align 4
  br label %50

50:                                               ; preds = %48, %46
  br label %51

51:                                               ; preds = %50, %38
  br label %52

52:                                               ; preds = %51, %30
  %53 = load i32, i32* %4, align 4
  %54 = icmp eq i32 %53, 4
  br i1 %54, label %55, label %59

55:                                               ; preds = %52
  %56 = load i8**, i8*** %5, align 8
  %57 = getelementptr inbounds i8*, i8** %56, i64 3
  %58 = load i8*, i8** %57, align 8
  store i8* %58, i8** %7, align 8
  br label %59

59:                                               ; preds = %55, %52
  br label %62

60:                                               ; preds = %21
  %61 = load i32, i32* @RV_USAGE, align 4
  store i32 %61, i32* %8, align 4
  br label %62

62:                                               ; preds = %60, %59
  %63 = load i32, i32* %8, align 4
  %64 = load i32, i32* @RV_USAGE, align 4
  %65 = icmp eq i32 %63, %64
  br i1 %65, label %66, label %70

66:                                               ; preds = %62
  %67 = load i32, i32* @stderr, align 4
  %68 = call i8* (...) @getprogname()
  %69 = call i32 @fprintf(i32 %67, i8* getelementptr inbounds ([53 x i8], [53 x i8]* @.str.3, i64 0, i64 0), i8* %68)
  br label %91

70:                                               ; preds = %62
  %71 = load i32, i32* %8, align 4
  %72 = load i32, i32* @RV_OK, align 4
  %73 = icmp eq i32 %71, %72
  br i1 %73, label %74, label %90

74:                                               ; preds = %70
  %75 = load i32, i32* %9, align 4
  %76 = load i8*, i8** %7, align 8
  %77 = call i64 @setutxdb(i32 %75, i8* %76)
  %78 = icmp ne i64 %77, 0
  br i1 %78, label %79, label %81

79:                                               ; preds = %74
  %80 = load i32, i32* @RV_NOTFOUND, align 4
  store i32 %80, i32* %3, align 4
  br label %93

81:                                               ; preds = %74
  br label %82

82:                                               ; preds = %85, %81
  %83 = call %struct.utmpx* (...) @getutxent()
  store %struct.utmpx* %83, %struct.utmpx** %6, align 8
  %84 = icmp ne %struct.utmpx* %83, null
  br i1 %84, label %85, label %88

85:                                               ; preds = %82
  %86 = load %struct.utmpx*, %struct.utmpx** %6, align 8
  %87 = call i32 @utmpxprint(%struct.utmpx* %86)
  br label %82

88:                                               ; preds = %82
  %89 = call i32 (...) @endutxent()
  br label %90

90:                                               ; preds = %88, %70
  br label %91

91:                                               ; preds = %90, %66
  %92 = load i32, i32* %8, align 4
  store i32 %92, i32* %3, align 4
  br label %93

93:                                               ; preds = %91, %79
  %94 = load i32, i32* %3, align 4
  ret i32 %94
}

declare dso_local i32 @assert(i32) #1

declare dso_local i64 @strcmp(i8*, i8*) #1

declare dso_local i32 @fprintf(i32, i8*, i8*) #1

declare dso_local i8* @getprogname(...) #1

declare dso_local i64 @setutxdb(i32, i8*) #1

declare dso_local %struct.utmpx* @getutxent(...) #1

declare dso_local i32 @utmpxprint(%struct.utmpx*) #1

declare dso_local i32 @endutxent(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
