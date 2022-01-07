; ModuleID = '/home/carl/AnghaBench/freebsd/usr.sbin/eeprom/extr_ofw_options.c_ofwo_oemlogo.c'
source_filename = "/home/carl/AnghaBench/freebsd/usr.sbin/eeprom/extr_ofw_options.c_ofwo_oemlogo.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ofwo_extabent = type { i8* }

@OFWO_LOGO = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@O_RDONLY = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [20 x i8] c"could not open '%s'\00", align 1
@EX_USAGE = common dso_local global i32 0, align 4
@SEEK_END = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [26 x i8] c"logo '%s' has wrong size.\00", align 1
@EX_IOERR = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [21 x i8] c"writing logo failed.\00", align 1
@.str.4 = private unnamed_addr constant [17 x i8] c"%s: <logo data>\0A\00", align 1
@EX_OK = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ofwo_extabent*, i32, i8*, i32, i8*)* @ofwo_oemlogo to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ofwo_oemlogo(%struct.ofwo_extabent* %0, i32 %1, i8* %2, i32 %3, i8* %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca %struct.ofwo_extabent*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i8*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i8*, align 8
  %12 = alloca i32, align 4
  %13 = alloca i8*, align 8
  %14 = alloca i64, align 8
  %15 = alloca i32, align 4
  store %struct.ofwo_extabent* %0, %struct.ofwo_extabent** %7, align 8
  store i32 %1, i32* %8, align 4
  store i8* %2, i8** %9, align 8
  store i32 %3, i32* %10, align 4
  store i8* %4, i8** %11, align 8
  %16 = load i32, i32* @OFWO_LOGO, align 4
  %17 = add nsw i32 %16, 1
  %18 = zext i32 %17 to i64
  %19 = call i8* @llvm.stacksave()
  store i8* %19, i8** %13, align 8
  %20 = alloca i8, i64 %18, align 16
  store i64 %18, i64* %14, align 8
  %21 = load i8*, i8** %11, align 8
  %22 = icmp ne i8* %21, null
  br i1 %22, label %23, label %86

23:                                               ; preds = %5
  %24 = load i8*, i8** %11, align 8
  %25 = getelementptr inbounds i8, i8* %24, i64 0
  %26 = load i8, i8* %25, align 1
  %27 = sext i8 %26 to i32
  %28 = icmp eq i32 %27, 0
  br i1 %28, label %29, label %37

29:                                               ; preds = %23
  %30 = load i32, i32* %8, align 4
  %31 = load i32, i32* %8, align 4
  %32 = call i32 @ofw_optnode(i32 %31)
  %33 = load %struct.ofwo_extabent*, %struct.ofwo_extabent** %7, align 8
  %34 = getelementptr inbounds %struct.ofwo_extabent, %struct.ofwo_extabent* %33, i32 0, i32 0
  %35 = load i8*, i8** %34, align 8
  %36 = call i32 @ofw_setprop(i32 %30, i32 %32, i8* %35, i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str, i64 0, i64 0), i32 1)
  br label %85

37:                                               ; preds = %23
  %38 = load i8*, i8** %11, align 8
  %39 = load i32, i32* @O_RDONLY, align 4
  %40 = call i32 @open(i8* %38, i32 %39)
  store i32 %40, i32* %12, align 4
  %41 = icmp eq i32 %40, -1
  br i1 %41, label %42, label %46

42:                                               ; preds = %37
  %43 = load i8*, i8** %11, align 8
  %44 = call i32 @warn(i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.1, i64 0, i64 0), i8* %43)
  %45 = load i32, i32* @EX_USAGE, align 4
  store i32 %45, i32* %6, align 4
  store i32 1, i32* %15, align 4
  br label %104

46:                                               ; preds = %37
  %47 = load i32, i32* %12, align 4
  %48 = load i32, i32* @OFWO_LOGO, align 4
  %49 = call i32 @read(i32 %47, i8* %20, i32 %48)
  %50 = load i32, i32* @OFWO_LOGO, align 4
  %51 = icmp ne i32 %49, %50
  br i1 %51, label %58, label %52

52:                                               ; preds = %46
  %53 = load i32, i32* %12, align 4
  %54 = load i32, i32* @SEEK_END, align 4
  %55 = call i32 @lseek(i32 %53, i32 0, i32 %54)
  %56 = load i32, i32* @OFWO_LOGO, align 4
  %57 = icmp ne i32 %55, %56
  br i1 %57, label %58, label %64

58:                                               ; preds = %52, %46
  %59 = load i32, i32* %12, align 4
  %60 = call i32 @close(i32 %59)
  %61 = load i8*, i8** %11, align 8
  %62 = call i32 @warnx(i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.2, i64 0, i64 0), i8* %61)
  %63 = load i32, i32* @EX_USAGE, align 4
  store i32 %63, i32* %6, align 4
  store i32 1, i32* %15, align 4
  br label %104

64:                                               ; preds = %52
  %65 = load i32, i32* %12, align 4
  %66 = call i32 @close(i32 %65)
  %67 = load i32, i32* @OFWO_LOGO, align 4
  %68 = sext i32 %67 to i64
  %69 = getelementptr inbounds i8, i8* %20, i64 %68
  store i8 0, i8* %69, align 1
  %70 = load i32, i32* %8, align 4
  %71 = load i32, i32* %8, align 4
  %72 = call i32 @ofw_optnode(i32 %71)
  %73 = load %struct.ofwo_extabent*, %struct.ofwo_extabent** %7, align 8
  %74 = getelementptr inbounds %struct.ofwo_extabent, %struct.ofwo_extabent* %73, i32 0, i32 0
  %75 = load i8*, i8** %74, align 8
  %76 = load i32, i32* @OFWO_LOGO, align 4
  %77 = add nsw i32 %76, 1
  %78 = call i32 @ofw_setprop(i32 %70, i32 %72, i8* %75, i8* %20, i32 %77)
  %79 = load i32, i32* @OFWO_LOGO, align 4
  %80 = icmp ne i32 %78, %79
  br i1 %80, label %81, label %84

81:                                               ; preds = %64
  %82 = load i32, i32* @EX_IOERR, align 4
  %83 = call i32 @errx(i32 %82, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.3, i64 0, i64 0))
  br label %84

84:                                               ; preds = %81, %64
  br label %85

85:                                               ; preds = %84, %29
  br label %102

86:                                               ; preds = %5
  %87 = load i32, i32* %10, align 4
  %88 = icmp ne i32 %87, 0
  br i1 %88, label %89, label %94

89:                                               ; preds = %86
  %90 = load %struct.ofwo_extabent*, %struct.ofwo_extabent** %7, align 8
  %91 = getelementptr inbounds %struct.ofwo_extabent, %struct.ofwo_extabent* %90, i32 0, i32 0
  %92 = load i8*, i8** %91, align 8
  %93 = call i32 @printf(i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.4, i64 0, i64 0), i8* %92)
  br label %101

94:                                               ; preds = %86
  %95 = load %struct.ofwo_extabent*, %struct.ofwo_extabent** %7, align 8
  %96 = getelementptr inbounds %struct.ofwo_extabent, %struct.ofwo_extabent* %95, i32 0, i32 0
  %97 = load i8*, i8** %96, align 8
  %98 = load i8*, i8** %9, align 8
  %99 = load i32, i32* %10, align 4
  %100 = call i32 @ofwo_printprop(i8* %97, i8* %98, i32 %99)
  br label %101

101:                                              ; preds = %94, %89
  br label %102

102:                                              ; preds = %101, %85
  %103 = load i32, i32* @EX_OK, align 4
  store i32 %103, i32* %6, align 4
  store i32 1, i32* %15, align 4
  br label %104

104:                                              ; preds = %102, %58, %42
  %105 = load i8*, i8** %13, align 8
  call void @llvm.stackrestore(i8* %105)
  %106 = load i32, i32* %6, align 4
  ret i32 %106
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i32 @ofw_setprop(i32, i32, i8*, i8*, i32) #2

declare dso_local i32 @ofw_optnode(i32) #2

declare dso_local i32 @open(i8*, i32) #2

declare dso_local i32 @warn(i8*, i8*) #2

declare dso_local i32 @read(i32, i8*, i32) #2

declare dso_local i32 @lseek(i32, i32, i32) #2

declare dso_local i32 @close(i32) #2

declare dso_local i32 @warnx(i8*, i8*) #2

declare dso_local i32 @errx(i32, i8*) #2

declare dso_local i32 @printf(i8*, i8*) #2

declare dso_local i32 @ofwo_printprop(i8*, i8*, i32) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
