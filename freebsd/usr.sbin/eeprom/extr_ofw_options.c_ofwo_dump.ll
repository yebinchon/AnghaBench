; ModuleID = '/home/carl/AnghaBench/freebsd/usr.sbin/eeprom/extr_ofw_options.c_ofwo_dump.c'
source_filename = "/home/carl/AnghaBench/freebsd/usr.sbin/eeprom/extr_ofw_options.c_ofwo_dump.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ofwo_extabent = type { i8*, i32 (%struct.ofwo_extabent*, i32, i8*, i32, i32*)* }

@OFWO_MAXPROP = common dso_local global i32 0, align 4
@O_RDONLY = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [5 x i8] c"name\00", align 1
@ofwo_extab = common dso_local global %struct.ofwo_extabent* null, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @ofwo_dump() #0 {
  %1 = alloca i8*, align 8
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i8*, align 8
  %8 = alloca i64, align 8
  %9 = alloca %struct.ofwo_extabent*, align 8
  %10 = load i32, i32* @OFWO_MAXPROP, align 4
  %11 = add nsw i32 %10, 1
  %12 = zext i32 %11 to i64
  %13 = call i8* @llvm.stacksave()
  store i8* %13, i8** %7, align 8
  %14 = alloca i8, i64 %12, align 16
  store i64 %12, i64* %8, align 8
  store i32 0, i32* %5, align 4
  store i8* null, i8** %1, align 8
  %15 = load i32, i32* @O_RDONLY, align 4
  %16 = call i32 @ofw_open(i32 %15)
  store i32 %16, i32* %2, align 4
  %17 = load i32, i32* %2, align 4
  %18 = call i32 @ofw_optnode(i32 %17)
  store i32 %18, i32* %6, align 4
  %19 = load i32, i32* %2, align 4
  %20 = load i32, i32* %6, align 4
  %21 = trunc i64 %12 to i32
  %22 = call i32 @ofw_firstprop(i32 %19, i32 %20, i8* %14, i32 %21)
  store i32 %22, i32* %4, align 4
  br label %23

23:                                               ; preds = %74, %0
  %24 = load i32, i32* %4, align 4
  %25 = icmp ne i32 %24, 0
  br i1 %25, label %26, label %79

26:                                               ; preds = %23
  %27 = load i32, i32* %2, align 4
  %28 = load i32, i32* %6, align 4
  %29 = call i32 @ofw_getprop_alloc(i32 %27, i32 %28, i8* %14, i8** %1, i32* %5, i32 1)
  store i32 %29, i32* %3, align 4
  %30 = load i32, i32* %3, align 4
  %31 = icmp slt i32 %30, 0
  br i1 %31, label %32, label %33

32:                                               ; preds = %26
  br label %74

33:                                               ; preds = %26
  %34 = call i64 @strcmp(i8* %14, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i64 0, i64 0))
  %35 = icmp eq i64 %34, 0
  br i1 %35, label %36, label %37

36:                                               ; preds = %33
  br label %74

37:                                               ; preds = %33
  %38 = load %struct.ofwo_extabent*, %struct.ofwo_extabent** @ofwo_extab, align 8
  store %struct.ofwo_extabent* %38, %struct.ofwo_extabent** %9, align 8
  br label %39

39:                                               ; preds = %52, %37
  %40 = load %struct.ofwo_extabent*, %struct.ofwo_extabent** %9, align 8
  %41 = getelementptr inbounds %struct.ofwo_extabent, %struct.ofwo_extabent* %40, i32 0, i32 0
  %42 = load i8*, i8** %41, align 8
  %43 = icmp ne i8* %42, null
  br i1 %43, label %44, label %55

44:                                               ; preds = %39
  %45 = load %struct.ofwo_extabent*, %struct.ofwo_extabent** %9, align 8
  %46 = getelementptr inbounds %struct.ofwo_extabent, %struct.ofwo_extabent* %45, i32 0, i32 0
  %47 = load i8*, i8** %46, align 8
  %48 = call i64 @strcmp(i8* %47, i8* %14)
  %49 = icmp eq i64 %48, 0
  br i1 %49, label %50, label %51

50:                                               ; preds = %44
  br label %55

51:                                               ; preds = %44
  br label %52

52:                                               ; preds = %51
  %53 = load %struct.ofwo_extabent*, %struct.ofwo_extabent** %9, align 8
  %54 = getelementptr inbounds %struct.ofwo_extabent, %struct.ofwo_extabent* %53, i32 1
  store %struct.ofwo_extabent* %54, %struct.ofwo_extabent** %9, align 8
  br label %39

55:                                               ; preds = %50, %39
  %56 = load %struct.ofwo_extabent*, %struct.ofwo_extabent** %9, align 8
  %57 = getelementptr inbounds %struct.ofwo_extabent, %struct.ofwo_extabent* %56, i32 0, i32 0
  %58 = load i8*, i8** %57, align 8
  %59 = icmp ne i8* %58, null
  br i1 %59, label %60, label %69

60:                                               ; preds = %55
  %61 = load %struct.ofwo_extabent*, %struct.ofwo_extabent** %9, align 8
  %62 = getelementptr inbounds %struct.ofwo_extabent, %struct.ofwo_extabent* %61, i32 0, i32 1
  %63 = load i32 (%struct.ofwo_extabent*, i32, i8*, i32, i32*)*, i32 (%struct.ofwo_extabent*, i32, i8*, i32, i32*)** %62, align 8
  %64 = load %struct.ofwo_extabent*, %struct.ofwo_extabent** %9, align 8
  %65 = load i32, i32* %2, align 4
  %66 = load i8*, i8** %1, align 8
  %67 = load i32, i32* %3, align 4
  %68 = call i32 %63(%struct.ofwo_extabent* %64, i32 %65, i8* %66, i32 %67, i32* null)
  br label %73

69:                                               ; preds = %55
  %70 = load i8*, i8** %1, align 8
  %71 = load i32, i32* %3, align 4
  %72 = call i32 @ofwo_printprop(i8* %14, i8* %70, i32 %71)
  br label %73

73:                                               ; preds = %69, %60
  br label %74

74:                                               ; preds = %73, %36, %32
  %75 = load i32, i32* %2, align 4
  %76 = load i32, i32* %6, align 4
  %77 = trunc i64 %12 to i32
  %78 = call i32 @ofw_nextprop(i32 %75, i32 %76, i8* %14, i8* %14, i32 %77)
  store i32 %78, i32* %4, align 4
  br label %23

79:                                               ; preds = %23
  %80 = load i8*, i8** %1, align 8
  %81 = icmp ne i8* %80, null
  br i1 %81, label %82, label %85

82:                                               ; preds = %79
  %83 = load i8*, i8** %1, align 8
  %84 = call i32 @free(i8* %83)
  br label %85

85:                                               ; preds = %82, %79
  %86 = load i32, i32* %2, align 4
  %87 = call i32 @ofw_close(i32 %86)
  %88 = load i8*, i8** %7, align 8
  call void @llvm.stackrestore(i8* %88)
  ret void
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i32 @ofw_open(i32) #2

declare dso_local i32 @ofw_optnode(i32) #2

declare dso_local i32 @ofw_firstprop(i32, i32, i8*, i32) #2

declare dso_local i32 @ofw_getprop_alloc(i32, i32, i8*, i8**, i32*, i32) #2

declare dso_local i64 @strcmp(i8*, i8*) #2

declare dso_local i32 @ofwo_printprop(i8*, i8*, i32) #2

declare dso_local i32 @ofw_nextprop(i32, i32, i8*, i8*, i32) #2

declare dso_local i32 @free(i8*) #2

declare dso_local i32 @ofw_close(i32) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
