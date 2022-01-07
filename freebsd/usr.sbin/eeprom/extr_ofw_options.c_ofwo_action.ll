; ModuleID = '/home/carl/AnghaBench/freebsd/usr.sbin/eeprom/extr_ofw_options.c_ofwo_action.c'
source_filename = "/home/carl/AnghaBench/freebsd/usr.sbin/eeprom/extr_ofw_options.c_ofwo_action.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ofwo_extabent = type { i8*, i32 (%struct.ofwo_extabent*, i32, i8*, i32, i8*)* }

@EX_OK = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [5 x i8] c"name\00", align 1
@EX_UNAVAILABLE = common dso_local global i32 0, align 4
@O_RDWR = common dso_local global i32 0, align 4
@O_RDONLY = common dso_local global i32 0, align 4
@ofwo_extab = common dso_local global %struct.ofwo_extabent* null, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @ofwo_action(i8* %0, i8* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i8*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca %struct.ofwo_extabent*, align 8
  store i8* %0, i8** %4, align 8
  store i8* %1, i8** %5, align 8
  store i32 0, i32* %9, align 4
  %12 = load i32, i32* @EX_OK, align 4
  store i32 %12, i32* %10, align 4
  store i8* null, i8** %6, align 8
  %13 = load i8*, i8** %4, align 8
  %14 = call i64 @strcmp(i8* %13, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i64 0, i64 0))
  %15 = icmp eq i64 %14, 0
  br i1 %15, label %16, label %18

16:                                               ; preds = %2
  %17 = load i32, i32* @EX_UNAVAILABLE, align 4
  store i32 %17, i32* %3, align 4
  br label %98

18:                                               ; preds = %2
  %19 = load i8*, i8** %5, align 8
  %20 = icmp ne i8* %19, null
  br i1 %20, label %21, label %24

21:                                               ; preds = %18
  %22 = load i32, i32* @O_RDWR, align 4
  %23 = call i32 @ofw_open(i32 %22)
  store i32 %23, i32* %7, align 4
  br label %27

24:                                               ; preds = %18
  %25 = load i32, i32* @O_RDONLY, align 4
  %26 = call i32 @ofw_open(i32 %25)
  store i32 %26, i32* %7, align 4
  br label %27

27:                                               ; preds = %24, %21
  %28 = load i32, i32* %7, align 4
  %29 = load i32, i32* %7, align 4
  %30 = call i32 @ofw_optnode(i32 %29)
  %31 = load i8*, i8** %4, align 8
  %32 = call i32 @ofw_getprop_alloc(i32 %28, i32 %30, i8* %31, i8** %6, i32* %9, i32 1)
  store i32 %32, i32* %8, align 4
  %33 = load i32, i32* %8, align 4
  %34 = icmp slt i32 %33, 0
  br i1 %34, label %35, label %37

35:                                               ; preds = %27
  %36 = load i32, i32* @EX_UNAVAILABLE, align 4
  store i32 %36, i32* %10, align 4
  br label %88

37:                                               ; preds = %27
  %38 = load %struct.ofwo_extabent*, %struct.ofwo_extabent** @ofwo_extab, align 8
  store %struct.ofwo_extabent* %38, %struct.ofwo_extabent** %11, align 8
  br label %39

39:                                               ; preds = %53, %37
  %40 = load %struct.ofwo_extabent*, %struct.ofwo_extabent** %11, align 8
  %41 = getelementptr inbounds %struct.ofwo_extabent, %struct.ofwo_extabent* %40, i32 0, i32 0
  %42 = load i8*, i8** %41, align 8
  %43 = icmp ne i8* %42, null
  br i1 %43, label %44, label %56

44:                                               ; preds = %39
  %45 = load %struct.ofwo_extabent*, %struct.ofwo_extabent** %11, align 8
  %46 = getelementptr inbounds %struct.ofwo_extabent, %struct.ofwo_extabent* %45, i32 0, i32 0
  %47 = load i8*, i8** %46, align 8
  %48 = load i8*, i8** %4, align 8
  %49 = call i64 @strcmp(i8* %47, i8* %48)
  %50 = icmp eq i64 %49, 0
  br i1 %50, label %51, label %52

51:                                               ; preds = %44
  br label %56

52:                                               ; preds = %44
  br label %53

53:                                               ; preds = %52
  %54 = load %struct.ofwo_extabent*, %struct.ofwo_extabent** %11, align 8
  %55 = getelementptr inbounds %struct.ofwo_extabent, %struct.ofwo_extabent* %54, i32 1
  store %struct.ofwo_extabent* %55, %struct.ofwo_extabent** %11, align 8
  br label %39

56:                                               ; preds = %51, %39
  %57 = load %struct.ofwo_extabent*, %struct.ofwo_extabent** %11, align 8
  %58 = getelementptr inbounds %struct.ofwo_extabent, %struct.ofwo_extabent* %57, i32 0, i32 0
  %59 = load i8*, i8** %58, align 8
  %60 = icmp ne i8* %59, null
  br i1 %60, label %61, label %71

61:                                               ; preds = %56
  %62 = load %struct.ofwo_extabent*, %struct.ofwo_extabent** %11, align 8
  %63 = getelementptr inbounds %struct.ofwo_extabent, %struct.ofwo_extabent* %62, i32 0, i32 1
  %64 = load i32 (%struct.ofwo_extabent*, i32, i8*, i32, i8*)*, i32 (%struct.ofwo_extabent*, i32, i8*, i32, i8*)** %63, align 8
  %65 = load %struct.ofwo_extabent*, %struct.ofwo_extabent** %11, align 8
  %66 = load i32, i32* %7, align 4
  %67 = load i8*, i8** %6, align 8
  %68 = load i32, i32* %8, align 4
  %69 = load i8*, i8** %5, align 8
  %70 = call i32 %64(%struct.ofwo_extabent* %65, i32 %66, i8* %67, i32 %68, i8* %69)
  store i32 %70, i32* %10, align 4
  br label %87

71:                                               ; preds = %56
  %72 = load i8*, i8** %5, align 8
  %73 = icmp ne i8* %72, null
  br i1 %73, label %74, label %81

74:                                               ; preds = %71
  %75 = load i32, i32* %7, align 4
  %76 = load i8*, i8** %6, align 8
  %77 = load i32, i32* %8, align 4
  %78 = load i8*, i8** %4, align 8
  %79 = load i8*, i8** %5, align 8
  %80 = call i32 @ofwo_setstr(i32 %75, i8* %76, i32 %77, i8* %78, i8* %79)
  store i32 %80, i32* %10, align 4
  br label %86

81:                                               ; preds = %71
  %82 = load i8*, i8** %4, align 8
  %83 = load i8*, i8** %6, align 8
  %84 = load i32, i32* %8, align 4
  %85 = call i32 @ofwo_printprop(i8* %82, i8* %83, i32 %84)
  br label %86

86:                                               ; preds = %81, %74
  br label %87

87:                                               ; preds = %86, %61
  br label %88

88:                                               ; preds = %87, %35
  %89 = load i8*, i8** %6, align 8
  %90 = icmp ne i8* %89, null
  br i1 %90, label %91, label %94

91:                                               ; preds = %88
  %92 = load i8*, i8** %6, align 8
  %93 = call i32 @free(i8* %92)
  br label %94

94:                                               ; preds = %91, %88
  %95 = load i32, i32* %7, align 4
  %96 = call i32 @ofw_close(i32 %95)
  %97 = load i32, i32* %10, align 4
  store i32 %97, i32* %3, align 4
  br label %98

98:                                               ; preds = %94, %16
  %99 = load i32, i32* %3, align 4
  ret i32 %99
}

declare dso_local i64 @strcmp(i8*, i8*) #1

declare dso_local i32 @ofw_open(i32) #1

declare dso_local i32 @ofw_getprop_alloc(i32, i32, i8*, i8**, i32*, i32) #1

declare dso_local i32 @ofw_optnode(i32) #1

declare dso_local i32 @ofwo_setstr(i32, i8*, i32, i8*, i8*) #1

declare dso_local i32 @ofwo_printprop(i8*, i8*, i32) #1

declare dso_local i32 @free(i8*) #1

declare dso_local i32 @ofw_close(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
