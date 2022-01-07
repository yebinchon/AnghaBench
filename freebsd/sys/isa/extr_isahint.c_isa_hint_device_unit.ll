; ModuleID = '/home/carl/AnghaBench/freebsd/sys/isa/extr_isahint.c_isa_hint_device_unit.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/isa/extr_isahint.c_isa_hint_device_unit.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [3 x i8] c"at\00", align 1
@.str.1 = private unnamed_addr constant [5 x i8] c"port\00", align 1
@.str.2 = private unnamed_addr constant [4 x i8] c"fdc\00", align 1
@SYS_RES_IOPORT = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [6 x i8] c"maddr\00", align 1
@SYS_RES_MEMORY = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [4 x i8] c"irq\00", align 1
@SYS_RES_IRQ = common dso_local global i32 0, align 4
@.str.5 = private unnamed_addr constant [4 x i8] c"drq\00", align 1
@SYS_RES_DRQ = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @isa_hint_device_unit(i32 %0, i32 %1, i8* %2, i32* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i8*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i64, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  store i32 %0, i32* %5, align 4
  store i32 %1, i32* %6, align 4
  store i8* %2, i8** %7, align 8
  store i32* %3, i32** %8, align 8
  store i32 0, i32* %11, align 4
  br label %14

14:                                               ; preds = %117, %108, %92, %72, %56, %34, %4
  %15 = load i8*, i8** %7, align 8
  %16 = call i64 @resource_find_dev(i32* %11, i8* %15, i32* %13, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str, i64 0, i64 0), i32* null)
  %17 = icmp ne i64 %16, 0
  br i1 %17, label %18, label %19

18:                                               ; preds = %14
  br label %118

19:                                               ; preds = %14
  %20 = load i8*, i8** %7, align 8
  %21 = load i32, i32* %13, align 4
  %22 = call i32 @resource_string_value(i8* %20, i32 %21, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str, i64 0, i64 0), i8** %9)
  %23 = load i8*, i8** %9, align 8
  %24 = load i32, i32* %5, align 4
  %25 = call i8* @device_get_nameunit(i32 %24)
  %26 = call i64 @strcmp(i8* %23, i8* %25)
  %27 = icmp eq i64 %26, 0
  br i1 %27, label %35, label %28

28:                                               ; preds = %19
  %29 = load i8*, i8** %9, align 8
  %30 = load i32, i32* %5, align 4
  %31 = call i8* @device_get_name(i32 %30)
  %32 = call i64 @strcmp(i8* %29, i8* %31)
  %33 = icmp eq i64 %32, 0
  br i1 %33, label %35, label %34

34:                                               ; preds = %28
  br label %14

35:                                               ; preds = %28, %19
  store i32 0, i32* %12, align 4
  %36 = load i8*, i8** %7, align 8
  %37 = load i32, i32* %13, align 4
  %38 = call i64 @resource_long_value(i8* %36, i32 %37, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.1, i64 0, i64 0), i64* %10)
  %39 = icmp eq i64 %38, 0
  br i1 %39, label %40, label %58

40:                                               ; preds = %35
  %41 = load i8*, i8** %7, align 8
  %42 = call i64 @strcmp(i8* %41, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.2, i64 0, i64 0))
  %43 = icmp eq i64 %42, 0
  br i1 %43, label %44, label %47

44:                                               ; preds = %40
  %45 = load i64, i64* %10, align 8
  %46 = add nsw i64 %45, 2
  store i64 %46, i64* %10, align 8
  br label %47

47:                                               ; preds = %44, %40
  %48 = load i32, i32* %6, align 4
  %49 = load i32, i32* @SYS_RES_IOPORT, align 4
  %50 = load i64, i64* %10, align 8
  %51 = call i64 @isa_match_resource_hint(i32 %48, i32 %49, i64 %50)
  %52 = icmp ne i64 %51, 0
  br i1 %52, label %53, label %56

53:                                               ; preds = %47
  %54 = load i32, i32* %12, align 4
  %55 = add nsw i32 %54, 1
  store i32 %55, i32* %12, align 4
  br label %57

56:                                               ; preds = %47
  br label %14

57:                                               ; preds = %53
  br label %58

58:                                               ; preds = %57, %35
  %59 = load i8*, i8** %7, align 8
  %60 = load i32, i32* %13, align 4
  %61 = call i64 @resource_long_value(i8* %59, i32 %60, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.3, i64 0, i64 0), i64* %10)
  %62 = icmp eq i64 %61, 0
  br i1 %62, label %63, label %74

63:                                               ; preds = %58
  %64 = load i32, i32* %6, align 4
  %65 = load i32, i32* @SYS_RES_MEMORY, align 4
  %66 = load i64, i64* %10, align 8
  %67 = call i64 @isa_match_resource_hint(i32 %64, i32 %65, i64 %66)
  %68 = icmp ne i64 %67, 0
  br i1 %68, label %69, label %72

69:                                               ; preds = %63
  %70 = load i32, i32* %12, align 4
  %71 = add nsw i32 %70, 1
  store i32 %71, i32* %12, align 4
  br label %73

72:                                               ; preds = %63
  br label %14

73:                                               ; preds = %69
  br label %74

74:                                               ; preds = %73, %58
  %75 = load i32, i32* %12, align 4
  %76 = icmp sgt i32 %75, 0
  br i1 %76, label %77, label %78

77:                                               ; preds = %74
  br label %111

78:                                               ; preds = %74
  %79 = load i8*, i8** %7, align 8
  %80 = load i32, i32* %13, align 4
  %81 = call i64 @resource_long_value(i8* %79, i32 %80, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.4, i64 0, i64 0), i64* %10)
  %82 = icmp eq i64 %81, 0
  br i1 %82, label %83, label %94

83:                                               ; preds = %78
  %84 = load i32, i32* %6, align 4
  %85 = load i32, i32* @SYS_RES_IRQ, align 4
  %86 = load i64, i64* %10, align 8
  %87 = call i64 @isa_match_resource_hint(i32 %84, i32 %85, i64 %86)
  %88 = icmp ne i64 %87, 0
  br i1 %88, label %89, label %92

89:                                               ; preds = %83
  %90 = load i32, i32* %12, align 4
  %91 = add nsw i32 %90, 1
  store i32 %91, i32* %12, align 4
  br label %93

92:                                               ; preds = %83
  br label %14

93:                                               ; preds = %89
  br label %94

94:                                               ; preds = %93, %78
  %95 = load i8*, i8** %7, align 8
  %96 = load i32, i32* %13, align 4
  %97 = call i64 @resource_long_value(i8* %95, i32 %96, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.5, i64 0, i64 0), i64* %10)
  %98 = icmp eq i64 %97, 0
  br i1 %98, label %99, label %110

99:                                               ; preds = %94
  %100 = load i32, i32* %6, align 4
  %101 = load i32, i32* @SYS_RES_DRQ, align 4
  %102 = load i64, i64* %10, align 8
  %103 = call i64 @isa_match_resource_hint(i32 %100, i32 %101, i64 %102)
  %104 = icmp ne i64 %103, 0
  br i1 %104, label %105, label %108

105:                                              ; preds = %99
  %106 = load i32, i32* %12, align 4
  %107 = add nsw i32 %106, 1
  store i32 %107, i32* %12, align 4
  br label %109

108:                                              ; preds = %99
  br label %14

109:                                              ; preds = %105
  br label %110

110:                                              ; preds = %109, %94
  br label %111

111:                                              ; preds = %110, %77
  %112 = load i32, i32* %12, align 4
  %113 = icmp sgt i32 %112, 0
  br i1 %113, label %114, label %117

114:                                              ; preds = %111
  %115 = load i32, i32* %13, align 4
  %116 = load i32*, i32** %8, align 8
  store i32 %115, i32* %116, align 4
  br label %118

117:                                              ; preds = %111
  br label %14

118:                                              ; preds = %114, %18
  ret void
}

declare dso_local i64 @resource_find_dev(i32*, i8*, i32*, i8*, i32*) #1

declare dso_local i32 @resource_string_value(i8*, i32, i8*, i8**) #1

declare dso_local i64 @strcmp(i8*, i8*) #1

declare dso_local i8* @device_get_nameunit(i32) #1

declare dso_local i8* @device_get_name(i32) #1

declare dso_local i64 @resource_long_value(i8*, i32, i8*, i64*) #1

declare dso_local i64 @isa_match_resource_hint(i32, i32, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
