; ModuleID = '/home/carl/AnghaBench/freebsd/usr.sbin/eeprom/extr_ofw_options.c_ofwo_secpwd.c'
source_filename = "/home/carl/AnghaBench/freebsd/usr.sbin/eeprom/extr_ofw_options.c_ofwo_secpwd.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ofwo_extabent = type { i32 }

@EX_OK = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [14 x i8] c"security-mode\00", align 1
@.str.1 = private unnamed_addr constant [5 x i8] c"none\00", align 1
@EX_CONFIG = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [22 x i8] c"no security mode set.\00", align 1
@.str.3 = private unnamed_addr constant [8 x i8] c"command\00", align 1
@.str.4 = private unnamed_addr constant [5 x i8] c"full\00", align 1
@.str.5 = private unnamed_addr constant [23 x i8] c"invalid security mode.\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ofwo_extabent*, i32, i8*, i32, i8*)* @ofwo_secpwd to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ofwo_secpwd(%struct.ofwo_extabent* %0, i32 %1, i8* %2, i32 %3, i8* %4) #0 {
  %6 = alloca %struct.ofwo_extabent*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i8*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i8*, align 8
  %11 = alloca i8*, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  store %struct.ofwo_extabent* %0, %struct.ofwo_extabent** %6, align 8
  store i32 %1, i32* %7, align 4
  store i8* %2, i8** %8, align 8
  store i32 %3, i32* %9, align 4
  store i8* %4, i8** %10, align 8
  store i32 0, i32* %13, align 4
  %15 = load i32, i32* @EX_OK, align 4
  store i32 %15, i32* %14, align 4
  store i8* null, i8** %11, align 8
  %16 = load i8*, i8** %10, align 8
  %17 = icmp ne i8* %16, null
  br i1 %17, label %18, label %51

18:                                               ; preds = %5
  %19 = load i32, i32* %7, align 4
  %20 = load i32, i32* %7, align 4
  %21 = call i32 @ofw_optnode(i32 %20)
  %22 = call i32 @ofw_getprop_alloc(i32 %19, i32 %21, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str, i64 0, i64 0), i8** %11, i32* %13, i32 1)
  store i32 %22, i32* %12, align 4
  %23 = load i32, i32* %12, align 4
  %24 = icmp sle i32 %23, 0
  br i1 %24, label %30, label %25

25:                                               ; preds = %18
  %26 = load i8*, i8** %11, align 8
  %27 = load i32, i32* %12, align 4
  %28 = call i64 @strncmp(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.1, i64 0, i64 0), i8* %26, i32 %27)
  %29 = icmp eq i64 %28, 0
  br i1 %29, label %30, label %33

30:                                               ; preds = %25, %18
  %31 = load i32, i32* @EX_CONFIG, align 4
  store i32 %31, i32* %14, align 4
  %32 = call i32 @warnx(i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.2, i64 0, i64 0))
  br label %50

33:                                               ; preds = %25
  %34 = load i8*, i8** %11, align 8
  %35 = load i32, i32* %12, align 4
  %36 = call i64 @strncmp(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.3, i64 0, i64 0), i8* %34, i32 %35)
  %37 = icmp eq i64 %36, 0
  br i1 %37, label %43, label %38

38:                                               ; preds = %33
  %39 = load i8*, i8** %11, align 8
  %40 = load i32, i32* %12, align 4
  %41 = call i64 @strncmp(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.4, i64 0, i64 0), i8* %39, i32 %40)
  %42 = icmp eq i64 %41, 0
  br i1 %42, label %43, label %46

43:                                               ; preds = %38, %33
  %44 = load i32, i32* %7, align 4
  %45 = call i32 @ofwo_setpass(i32 %44)
  store i32 %45, i32* %14, align 4
  br label %49

46:                                               ; preds = %38
  %47 = load i32, i32* @EX_CONFIG, align 4
  store i32 %47, i32* %14, align 4
  %48 = call i32 @warnx(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.5, i64 0, i64 0))
  br label %49

49:                                               ; preds = %46, %43
  br label %50

50:                                               ; preds = %49, %30
  br label %58

51:                                               ; preds = %5
  %52 = load %struct.ofwo_extabent*, %struct.ofwo_extabent** %6, align 8
  %53 = getelementptr inbounds %struct.ofwo_extabent, %struct.ofwo_extabent* %52, i32 0, i32 0
  %54 = load i32, i32* %53, align 4
  %55 = load i8*, i8** %8, align 8
  %56 = load i32, i32* %9, align 4
  %57 = call i32 @ofwo_printprop(i32 %54, i8* %55, i32 %56)
  br label %58

58:                                               ; preds = %51, %50
  %59 = load i8*, i8** %11, align 8
  %60 = icmp ne i8* %59, null
  br i1 %60, label %61, label %64

61:                                               ; preds = %58
  %62 = load i8*, i8** %11, align 8
  %63 = call i32 @free(i8* %62)
  br label %64

64:                                               ; preds = %61, %58
  %65 = load i32, i32* %14, align 4
  ret i32 %65
}

declare dso_local i32 @ofw_getprop_alloc(i32, i32, i8*, i8**, i32*, i32) #1

declare dso_local i32 @ofw_optnode(i32) #1

declare dso_local i64 @strncmp(i8*, i8*, i32) #1

declare dso_local i32 @warnx(i8*) #1

declare dso_local i32 @ofwo_setpass(i32) #1

declare dso_local i32 @ofwo_printprop(i32, i8*, i32) #1

declare dso_local i32 @free(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
