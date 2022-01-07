; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/firewire/extr_fwcrom.c_crom_parse_text.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/firewire/extr_fwcrom.c_crom_parse_text.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.crom_context = type { i64 }
%struct.csrreg = type { i64, i32 }
%struct.csrtext = type { i32, i32* }

@crom_parse_text.nullstr = internal global i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str, i32 0, i32 0), align 8
@.str = private unnamed_addr constant [7 x i8] c"(null)\00", align 1
@CROM_TEXTLEAF = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @crom_parse_text(%struct.crom_context* %0, i8* %1, i32 %2) #0 {
  %4 = alloca %struct.crom_context*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.csrreg*, align 8
  %8 = alloca %struct.csrtext*, align 8
  %9 = alloca i32*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  store %struct.crom_context* %0, %struct.crom_context** %4, align 8
  store i8* %1, i8** %5, align 8
  store i32 %2, i32* %6, align 4
  %12 = load %struct.crom_context*, %struct.crom_context** %4, align 8
  %13 = getelementptr inbounds %struct.crom_context, %struct.crom_context* %12, i32 0, i32 0
  %14 = load i64, i64* %13, align 8
  %15 = icmp slt i64 %14, 0
  br i1 %15, label %16, label %17

16:                                               ; preds = %3
  br label %115

17:                                               ; preds = %3
  %18 = load %struct.crom_context*, %struct.crom_context** %4, align 8
  %19 = call %struct.csrreg* @crom_get(%struct.crom_context* %18)
  store %struct.csrreg* %19, %struct.csrreg** %7, align 8
  %20 = load %struct.csrreg*, %struct.csrreg** %7, align 8
  %21 = getelementptr inbounds %struct.csrreg, %struct.csrreg* %20, i32 0, i32 0
  %22 = load i64, i64* %21, align 8
  %23 = load i64, i64* @CROM_TEXTLEAF, align 8
  %24 = icmp ne i64 %22, %23
  br i1 %24, label %36, label %25

25:                                               ; preds = %17
  %26 = load %struct.csrreg*, %struct.csrreg** %7, align 8
  %27 = load %struct.csrreg*, %struct.csrreg** %7, align 8
  %28 = getelementptr inbounds %struct.csrreg, %struct.csrreg* %27, i32 0, i32 1
  %29 = load i32, i32* %28, align 8
  %30 = sext i32 %29 to i64
  %31 = getelementptr inbounds %struct.csrreg, %struct.csrreg* %26, i64 %30
  %32 = ptrtoint %struct.csrreg* %31 to i64
  %33 = load %struct.crom_context*, %struct.crom_context** %4, align 8
  %34 = call i64 @CROM_END(%struct.crom_context* %33)
  %35 = icmp sgt i64 %32, %34
  br i1 %35, label %36, label %41

36:                                               ; preds = %25, %17
  %37 = load i8*, i8** %5, align 8
  %38 = load i8*, i8** @crom_parse_text.nullstr, align 8
  %39 = load i32, i32* %6, align 4
  %40 = call i32 @strncpy(i8* %37, i8* %38, i32 %39)
  br label %115

41:                                               ; preds = %25
  %42 = load %struct.csrreg*, %struct.csrreg** %7, align 8
  %43 = load %struct.csrreg*, %struct.csrreg** %7, align 8
  %44 = getelementptr inbounds %struct.csrreg, %struct.csrreg* %43, i32 0, i32 1
  %45 = load i32, i32* %44, align 8
  %46 = sext i32 %45 to i64
  %47 = getelementptr inbounds %struct.csrreg, %struct.csrreg* %42, i64 %46
  %48 = bitcast %struct.csrreg* %47 to %struct.csrtext*
  store %struct.csrtext* %48, %struct.csrtext** %8, align 8
  %49 = load %struct.csrtext*, %struct.csrtext** %8, align 8
  %50 = ptrtoint %struct.csrtext* %49 to i64
  %51 = load %struct.csrtext*, %struct.csrtext** %8, align 8
  %52 = getelementptr inbounds %struct.csrtext, %struct.csrtext* %51, i32 0, i32 0
  %53 = load i32, i32* %52, align 8
  %54 = sext i32 %53 to i64
  %55 = add nsw i64 %50, %54
  %56 = load %struct.crom_context*, %struct.crom_context** %4, align 8
  %57 = call i64 @CROM_END(%struct.crom_context* %56)
  %58 = icmp sgt i64 %55, %57
  br i1 %58, label %59, label %64

59:                                               ; preds = %41
  %60 = load i8*, i8** %5, align 8
  %61 = load i8*, i8** @crom_parse_text.nullstr, align 8
  %62 = load i32, i32* %6, align 4
  %63 = call i32 @strncpy(i8* %60, i8* %61, i32 %62)
  br label %115

64:                                               ; preds = %41
  %65 = load i8*, i8** %5, align 8
  %66 = getelementptr inbounds i8, i8* %65, i64 0
  %67 = bitcast i8* %66 to i32*
  store i32* %67, i32** %9, align 8
  %68 = load %struct.csrtext*, %struct.csrtext** %8, align 8
  %69 = getelementptr inbounds %struct.csrtext, %struct.csrtext* %68, i32 0, i32 0
  %70 = load i32, i32* %69, align 8
  %71 = sub nsw i32 %70, 2
  store i32 %71, i32* %11, align 4
  %72 = load i32, i32* %6, align 4
  %73 = load i32, i32* %11, align 4
  %74 = mul nsw i32 %73, 4
  %75 = icmp slt i32 %72, %74
  br i1 %75, label %76, label %79

76:                                               ; preds = %64
  %77 = load i32, i32* %6, align 4
  %78 = sdiv i32 %77, 4
  store i32 %78, i32* %11, align 4
  br label %79

79:                                               ; preds = %76, %64
  store i32 0, i32* %10, align 4
  br label %80

80:                                               ; preds = %95, %79
  %81 = load i32, i32* %10, align 4
  %82 = load i32, i32* %11, align 4
  %83 = icmp slt i32 %81, %82
  br i1 %83, label %84, label %98

84:                                               ; preds = %80
  %85 = load %struct.csrtext*, %struct.csrtext** %8, align 8
  %86 = getelementptr inbounds %struct.csrtext, %struct.csrtext* %85, i32 0, i32 1
  %87 = load i32*, i32** %86, align 8
  %88 = load i32, i32* %10, align 4
  %89 = sext i32 %88 to i64
  %90 = getelementptr inbounds i32, i32* %87, i64 %89
  %91 = load i32, i32* %90, align 4
  %92 = call i32 @ntohl(i32 %91)
  %93 = load i32*, i32** %9, align 8
  %94 = getelementptr inbounds i32, i32* %93, i32 1
  store i32* %94, i32** %9, align 8
  store i32 %92, i32* %93, align 4
  br label %95

95:                                               ; preds = %84
  %96 = load i32, i32* %10, align 4
  %97 = add nsw i32 %96, 1
  store i32 %97, i32* %10, align 4
  br label %80

98:                                               ; preds = %80
  %99 = load i32, i32* %6, align 4
  %100 = load i32, i32* %11, align 4
  %101 = mul nsw i32 %100, 4
  %102 = icmp sle i32 %99, %101
  br i1 %102, label %103, label %109

103:                                              ; preds = %98
  %104 = load i8*, i8** %5, align 8
  %105 = load i32, i32* %6, align 4
  %106 = sub nsw i32 %105, 1
  %107 = sext i32 %106 to i64
  %108 = getelementptr inbounds i8, i8* %104, i64 %107
  store i8 0, i8* %108, align 1
  br label %115

109:                                              ; preds = %98
  %110 = load i8*, i8** %5, align 8
  %111 = load i32, i32* %11, align 4
  %112 = mul nsw i32 %111, 4
  %113 = sext i32 %112 to i64
  %114 = getelementptr inbounds i8, i8* %110, i64 %113
  store i8 0, i8* %114, align 1
  br label %115

115:                                              ; preds = %16, %36, %59, %109, %103
  ret void
}

declare dso_local %struct.csrreg* @crom_get(%struct.crom_context*) #1

declare dso_local i64 @CROM_END(%struct.crom_context*) #1

declare dso_local i32 @strncpy(i8*, i8*, i32) #1

declare dso_local i32 @ntohl(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
