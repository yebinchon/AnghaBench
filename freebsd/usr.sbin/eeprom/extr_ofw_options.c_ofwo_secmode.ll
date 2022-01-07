; ModuleID = '/home/carl/AnghaBench/freebsd/usr.sbin/eeprom/extr_ofw_options.c_ofwo_secmode.c'
source_filename = "/home/carl/AnghaBench/freebsd/usr.sbin/eeprom/extr_ofw_options.c_ofwo_secmode.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ofwo_extabent = type { i32 }

@.str = private unnamed_addr constant [5 x i8] c"full\00", align 1
@.str.1 = private unnamed_addr constant [8 x i8] c"command\00", align 1
@EX_OK = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [18 x i8] c"security-password\00", align 1
@.str.3 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@.str.4 = private unnamed_addr constant [5 x i8] c"none\00", align 1
@EX_DATAERR = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ofwo_extabent*, i32, i8*, i32, i8*)* @ofwo_secmode to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ofwo_secmode(%struct.ofwo_extabent* %0, i32 %1, i8* %2, i32 %3, i8* %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca %struct.ofwo_extabent*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i8*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i8*, align 8
  %12 = alloca i32, align 4
  store %struct.ofwo_extabent* %0, %struct.ofwo_extabent** %7, align 8
  store i32 %1, i32* %8, align 4
  store i8* %2, i8** %9, align 8
  store i32 %3, i32* %10, align 4
  store i8* %4, i8** %11, align 8
  %13 = load i8*, i8** %11, align 8
  %14 = icmp ne i8* %13, null
  br i1 %14, label %15, label %67

15:                                               ; preds = %5
  %16 = load i8*, i8** %11, align 8
  %17 = call i64 @strcmp(i8* %16, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i64 0, i64 0))
  %18 = icmp eq i64 %17, 0
  br i1 %18, label %23, label %19

19:                                               ; preds = %15
  %20 = load i8*, i8** %11, align 8
  %21 = call i64 @strcmp(i8* %20, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.1, i64 0, i64 0))
  %22 = icmp eq i64 %21, 0
  br i1 %22, label %23, label %48

23:                                               ; preds = %19, %15
  %24 = load i32, i32* %8, align 4
  %25 = call i32 @ofwo_setpass(i32 %24)
  store i32 %25, i32* %12, align 4
  %26 = load i32, i32* @EX_OK, align 4
  %27 = icmp ne i32 %25, %26
  br i1 %27, label %28, label %30

28:                                               ; preds = %23
  %29 = load i32, i32* %12, align 4
  store i32 %29, i32* %6, align 4
  br label %76

30:                                               ; preds = %23
  %31 = load i32, i32* %8, align 4
  %32 = load i8*, i8** %9, align 8
  %33 = load i32, i32* %10, align 4
  %34 = load %struct.ofwo_extabent*, %struct.ofwo_extabent** %7, align 8
  %35 = getelementptr inbounds %struct.ofwo_extabent, %struct.ofwo_extabent* %34, i32 0, i32 0
  %36 = load i32, i32* %35, align 4
  %37 = load i8*, i8** %11, align 8
  %38 = call i32 @ofwo_setstr(i32 %31, i8* %32, i32 %33, i32 %36, i8* %37)
  store i32 %38, i32* %12, align 4
  %39 = load i32, i32* @EX_OK, align 4
  %40 = icmp ne i32 %38, %39
  br i1 %40, label %41, label %46

41:                                               ; preds = %30
  %42 = load i32, i32* %8, align 4
  %43 = load i32, i32* %8, align 4
  %44 = call i32 @ofw_optnode(i32 %43)
  %45 = call i32 @ofw_setprop(i32 %42, i32 %44, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.2, i64 0, i64 0), i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.3, i64 0, i64 0), i32 1)
  br label %46

46:                                               ; preds = %41, %30
  %47 = load i32, i32* %12, align 4
  store i32 %47, i32* %6, align 4
  br label %76

48:                                               ; preds = %19
  %49 = load i8*, i8** %11, align 8
  %50 = call i64 @strcmp(i8* %49, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.4, i64 0, i64 0))
  %51 = icmp eq i64 %50, 0
  br i1 %51, label %52, label %65

52:                                               ; preds = %48
  %53 = load i32, i32* %8, align 4
  %54 = load i32, i32* %8, align 4
  %55 = call i32 @ofw_optnode(i32 %54)
  %56 = call i32 @ofw_setprop(i32 %53, i32 %55, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.2, i64 0, i64 0), i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.3, i64 0, i64 0), i32 1)
  %57 = load i32, i32* %8, align 4
  %58 = load i8*, i8** %9, align 8
  %59 = load i32, i32* %10, align 4
  %60 = load %struct.ofwo_extabent*, %struct.ofwo_extabent** %7, align 8
  %61 = getelementptr inbounds %struct.ofwo_extabent, %struct.ofwo_extabent* %60, i32 0, i32 0
  %62 = load i32, i32* %61, align 4
  %63 = load i8*, i8** %11, align 8
  %64 = call i32 @ofwo_setstr(i32 %57, i8* %58, i32 %59, i32 %62, i8* %63)
  store i32 %64, i32* %6, align 4
  br label %76

65:                                               ; preds = %48
  %66 = load i32, i32* @EX_DATAERR, align 4
  store i32 %66, i32* %6, align 4
  br label %76

67:                                               ; preds = %5
  %68 = load %struct.ofwo_extabent*, %struct.ofwo_extabent** %7, align 8
  %69 = getelementptr inbounds %struct.ofwo_extabent, %struct.ofwo_extabent* %68, i32 0, i32 0
  %70 = load i32, i32* %69, align 4
  %71 = load i8*, i8** %9, align 8
  %72 = load i32, i32* %10, align 4
  %73 = call i32 @ofwo_printprop(i32 %70, i8* %71, i32 %72)
  br label %74

74:                                               ; preds = %67
  %75 = load i32, i32* @EX_OK, align 4
  store i32 %75, i32* %6, align 4
  br label %76

76:                                               ; preds = %74, %65, %52, %46, %28
  %77 = load i32, i32* %6, align 4
  ret i32 %77
}

declare dso_local i64 @strcmp(i8*, i8*) #1

declare dso_local i32 @ofwo_setpass(i32) #1

declare dso_local i32 @ofwo_setstr(i32, i8*, i32, i32, i8*) #1

declare dso_local i32 @ofw_setprop(i32, i32, i8*, i8*, i32) #1

declare dso_local i32 @ofw_optnode(i32) #1

declare dso_local i32 @ofwo_printprop(i32, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
