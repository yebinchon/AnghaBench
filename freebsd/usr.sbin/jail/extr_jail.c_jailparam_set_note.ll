; ModuleID = '/home/carl/AnghaBench/freebsd/usr.sbin/jail/extr_jail.c_jailparam_set_note.c'
source_filename = "/home/carl/AnghaBench/freebsd/usr.sbin/jail/extr_jail.c_jailparam_set_note.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.cfjail = type { i32 }
%struct.jailparam = type { i8*, i32* }

@verbose = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [15 x i8] c"jail_set(%s%s)\00", align 1
@JAIL_CREATE = common dso_local global i32 0, align 4
@JAIL_UPDATE = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [12 x i8] c"JAIL_CREATE\00", align 1
@.str.2 = private unnamed_addr constant [12 x i8] c"JAIL_UPDATE\00", align 1
@JAIL_DYING = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [14 x i8] c" | JAIL_DYING\00", align 1
@.str.4 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@.str.5 = private unnamed_addr constant [4 x i8] c" %s\00", align 1
@.str.6 = private unnamed_addr constant [17 x i8] c"jailparam_export\00", align 1
@stdout = common dso_local global i32 0, align 4
@.str.7 = private unnamed_addr constant [5 x i8] c": %s\00", align 1
@errno = common dso_local global i32 0, align 4
@.str.8 = private unnamed_addr constant [2 x i8] c"\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.cfjail*, %struct.jailparam*, i32, i32)* @jailparam_set_note to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @jailparam_set_note(%struct.cfjail* %0, %struct.jailparam* %1, i32 %2, i32 %3) #0 {
  %5 = alloca %struct.cfjail*, align 8
  %6 = alloca %struct.jailparam*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i8*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  store %struct.cfjail* %0, %struct.cfjail** %5, align 8
  store %struct.jailparam* %1, %struct.jailparam** %6, align 8
  store i32 %2, i32* %7, align 4
  store i32 %3, i32* %8, align 4
  %12 = load %struct.jailparam*, %struct.jailparam** %6, align 8
  %13 = load i32, i32* %7, align 4
  %14 = load i32, i32* %8, align 4
  %15 = call i32 @jailparam_set(%struct.jailparam* %12, i32 %13, i32 %14)
  store i32 %15, i32* %10, align 4
  %16 = load i64, i64* @verbose, align 8
  %17 = icmp sgt i64 %16, 0
  br i1 %17, label %18, label %85

18:                                               ; preds = %4
  %19 = load %struct.cfjail*, %struct.cfjail** %5, align 8
  %20 = load i32, i32* %8, align 4
  %21 = load i32, i32* @JAIL_CREATE, align 4
  %22 = load i32, i32* @JAIL_UPDATE, align 4
  %23 = or i32 %21, %22
  %24 = and i32 %20, %23
  %25 = load i32, i32* @JAIL_CREATE, align 4
  %26 = icmp eq i32 %24, %25
  %27 = zext i1 %26 to i64
  %28 = select i1 %26, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.1, i64 0, i64 0), i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.2, i64 0, i64 0)
  %29 = load i32, i32* %8, align 4
  %30 = load i32, i32* @JAIL_DYING, align 4
  %31 = and i32 %29, %30
  %32 = icmp ne i32 %31, 0
  %33 = zext i1 %32 to i64
  %34 = select i1 %32, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.3, i64 0, i64 0), i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.4, i64 0, i64 0)
  %35 = call i32 @jail_note(%struct.cfjail* %19, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str, i64 0, i64 0), i8* %28, i8* %34)
  store i32 0, i32* %11, align 4
  br label %36

36:                                               ; preds = %73, %18
  %37 = load i32, i32* %11, align 4
  %38 = load i32, i32* %7, align 4
  %39 = icmp ult i32 %37, %38
  br i1 %39, label %40, label %76

40:                                               ; preds = %36
  %41 = load %struct.jailparam*, %struct.jailparam** %6, align 8
  %42 = load i32, i32* %11, align 4
  %43 = zext i32 %42 to i64
  %44 = getelementptr inbounds %struct.jailparam, %struct.jailparam* %41, i64 %43
  %45 = getelementptr inbounds %struct.jailparam, %struct.jailparam* %44, i32 0, i32 0
  %46 = load i8*, i8** %45, align 8
  %47 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.5, i64 0, i64 0), i8* %46)
  %48 = load %struct.jailparam*, %struct.jailparam** %6, align 8
  %49 = load i32, i32* %11, align 4
  %50 = zext i32 %49 to i64
  %51 = getelementptr inbounds %struct.jailparam, %struct.jailparam* %48, i64 %50
  %52 = getelementptr inbounds %struct.jailparam, %struct.jailparam* %51, i32 0, i32 1
  %53 = load i32*, i32** %52, align 8
  %54 = icmp eq i32* %53, null
  br i1 %54, label %55, label %56

55:                                               ; preds = %40
  br label %73

56:                                               ; preds = %40
  %57 = call i32 @putchar(i8 signext 61)
  %58 = load %struct.jailparam*, %struct.jailparam** %6, align 8
  %59 = load i32, i32* %11, align 4
  %60 = zext i32 %59 to i64
  %61 = getelementptr inbounds %struct.jailparam, %struct.jailparam* %58, i64 %60
  %62 = call i8* @jailparam_export(%struct.jailparam* %61)
  store i8* %62, i8** %9, align 8
  %63 = load i8*, i8** %9, align 8
  %64 = icmp eq i8* %63, null
  br i1 %64, label %65, label %67

65:                                               ; preds = %56
  %66 = call i32 @err(i32 1, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.6, i64 0, i64 0))
  br label %67

67:                                               ; preds = %65, %56
  %68 = load i32, i32* @stdout, align 4
  %69 = load i8*, i8** %9, align 8
  %70 = call i32 @quoted_print(i32 %68, i8* %69)
  %71 = load i8*, i8** %9, align 8
  %72 = call i32 @free(i8* %71)
  br label %73

73:                                               ; preds = %67, %55
  %74 = load i32, i32* %11, align 4
  %75 = add i32 %74, 1
  store i32 %75, i32* %11, align 4
  br label %36

76:                                               ; preds = %36
  %77 = load i32, i32* %10, align 4
  %78 = icmp slt i32 %77, 0
  br i1 %78, label %79, label %83

79:                                               ; preds = %76
  %80 = load i32, i32* @errno, align 4
  %81 = call i8* @strerror(i32 %80)
  %82 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.7, i64 0, i64 0), i8* %81)
  br label %83

83:                                               ; preds = %79, %76
  %84 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.8, i64 0, i64 0))
  br label %85

85:                                               ; preds = %83, %4
  %86 = load i32, i32* %10, align 4
  ret i32 %86
}

declare dso_local i32 @jailparam_set(%struct.jailparam*, i32, i32) #1

declare dso_local i32 @jail_note(%struct.cfjail*, i8*, i8*, i8*) #1

declare dso_local i32 @printf(i8*, ...) #1

declare dso_local i32 @putchar(i8 signext) #1

declare dso_local i8* @jailparam_export(%struct.jailparam*) #1

declare dso_local i32 @err(i32, i8*) #1

declare dso_local i32 @quoted_print(i32, i8*) #1

declare dso_local i32 @free(i8*) #1

declare dso_local i8* @strerror(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
