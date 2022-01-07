; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/cxgb/extr_cxgb_main.c_set_eeprom.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/cxgb/extr_cxgb_main.c_set_eeprom.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.port_info = type { %struct.adapter* }
%struct.adapter = type { i32 }

@M_DEVBUF = common dso_local global i32 0, align 4
@M_WAITOK = common dso_local global i32 0, align 4
@M_ZERO = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.port_info*, i32*, i32, i32)* @set_eeprom to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @set_eeprom(%struct.port_info* %0, i32* %1, i32 %2, i32 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.port_info*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32*, align 8
  %15 = alloca %struct.adapter*, align 8
  store %struct.port_info* %0, %struct.port_info** %6, align 8
  store i32* %1, i32** %7, align 8
  store i32 %2, i32* %8, align 4
  store i32 %3, i32* %9, align 4
  store i32 0, i32* %11, align 4
  %16 = load %struct.port_info*, %struct.port_info** %6, align 8
  %17 = getelementptr inbounds %struct.port_info, %struct.port_info* %16, i32 0, i32 0
  %18 = load %struct.adapter*, %struct.adapter** %17, align 8
  store %struct.adapter* %18, %struct.adapter** %15, align 8
  %19 = load i32, i32* %9, align 4
  %20 = and i32 %19, -4
  store i32 %20, i32* %12, align 4
  %21 = load i32, i32* %8, align 4
  %22 = load i32, i32* %9, align 4
  %23 = and i32 %22, 3
  %24 = add nsw i32 %21, %23
  %25 = add nsw i32 %24, 3
  %26 = and i32 %25, -4
  store i32 %26, i32* %13, align 4
  %27 = load i32, i32* %12, align 4
  %28 = load i32, i32* %9, align 4
  %29 = icmp ne i32 %27, %28
  br i1 %29, label %34, label %30

30:                                               ; preds = %4
  %31 = load i32, i32* %13, align 4
  %32 = load i32, i32* %8, align 4
  %33 = icmp ne i32 %31, %32
  br i1 %33, label %34, label %80

34:                                               ; preds = %30, %4
  %35 = load i32, i32* %13, align 4
  %36 = load i32, i32* @M_DEVBUF, align 4
  %37 = load i32, i32* @M_WAITOK, align 4
  %38 = load i32, i32* @M_ZERO, align 4
  %39 = or i32 %37, %38
  %40 = call i32* @malloc(i32 %35, i32 %36, i32 %39)
  store i32* %40, i32** %10, align 8
  %41 = load i32*, i32** %10, align 8
  %42 = icmp ne i32* %41, null
  br i1 %42, label %45, label %43

43:                                               ; preds = %34
  %44 = load i32, i32* @ENOMEM, align 4
  store i32 %44, i32* %5, align 4
  br label %130

45:                                               ; preds = %34
  %46 = load %struct.adapter*, %struct.adapter** %15, align 8
  %47 = load i32, i32* %12, align 4
  %48 = load i32*, i32** %10, align 8
  %49 = call i32 @t3_seeprom_read(%struct.adapter* %46, i32 %47, i32* %48)
  store i32 %49, i32* %11, align 4
  %50 = load i32, i32* %11, align 4
  %51 = icmp ne i32 %50, 0
  br i1 %51, label %67, label %52

52:                                               ; preds = %45
  %53 = load i32, i32* %13, align 4
  %54 = icmp sgt i32 %53, 4
  br i1 %54, label %55, label %67

55:                                               ; preds = %52
  %56 = load %struct.adapter*, %struct.adapter** %15, align 8
  %57 = load i32, i32* %12, align 4
  %58 = load i32, i32* %13, align 4
  %59 = add nsw i32 %57, %58
  %60 = sub nsw i32 %59, 4
  %61 = load i32*, i32** %10, align 8
  %62 = load i32, i32* %13, align 4
  %63 = sub nsw i32 %62, 4
  %64 = sext i32 %63 to i64
  %65 = getelementptr inbounds i32, i32* %61, i64 %64
  %66 = call i32 @t3_seeprom_read(%struct.adapter* %56, i32 %60, i32* %65)
  store i32 %66, i32* %11, align 4
  br label %67

67:                                               ; preds = %55, %52, %45
  %68 = load i32, i32* %11, align 4
  %69 = icmp ne i32 %68, 0
  br i1 %69, label %70, label %71

70:                                               ; preds = %67
  br label %120

71:                                               ; preds = %67
  %72 = load i32*, i32** %10, align 8
  %73 = load i32, i32* %9, align 4
  %74 = and i32 %73, 3
  %75 = sext i32 %74 to i64
  %76 = getelementptr inbounds i32, i32* %72, i64 %75
  %77 = load i32*, i32** %7, align 8
  %78 = load i32, i32* %8, align 4
  %79 = call i32 @memcpy(i32* %76, i32* %77, i32 %78)
  br label %84

80:                                               ; preds = %30
  %81 = load i32*, i32** %7, align 8
  %82 = ptrtoint i32* %81 to i64
  %83 = inttoptr i64 %82 to i32*
  store i32* %83, i32** %10, align 8
  br label %84

84:                                               ; preds = %80, %71
  %85 = load %struct.adapter*, %struct.adapter** %15, align 8
  %86 = call i32 @t3_seeprom_wp(%struct.adapter* %85, i32 0)
  store i32 %86, i32* %11, align 4
  %87 = load i32, i32* %11, align 4
  %88 = icmp ne i32 %87, 0
  br i1 %88, label %89, label %90

89:                                               ; preds = %84
  br label %120

90:                                               ; preds = %84
  %91 = load i32*, i32** %10, align 8
  store i32* %91, i32** %14, align 8
  br label %92

92:                                               ; preds = %108, %90
  %93 = load i32, i32* %11, align 4
  %94 = icmp ne i32 %93, 0
  br i1 %94, label %98, label %95

95:                                               ; preds = %92
  %96 = load i32, i32* %13, align 4
  %97 = icmp ne i32 %96, 0
  br label %98

98:                                               ; preds = %95, %92
  %99 = phi i1 [ false, %92 ], [ %97, %95 ]
  br i1 %99, label %100, label %113

100:                                              ; preds = %98
  %101 = load %struct.adapter*, %struct.adapter** %15, align 8
  %102 = load i32, i32* %12, align 4
  %103 = load i32*, i32** %14, align 8
  %104 = load i32, i32* %103, align 4
  %105 = call i32 @t3_seeprom_write(%struct.adapter* %101, i32 %102, i32 %104)
  store i32 %105, i32* %11, align 4
  %106 = load i32, i32* %12, align 4
  %107 = add nsw i32 %106, 4
  store i32 %107, i32* %12, align 4
  br label %108

108:                                              ; preds = %100
  %109 = load i32, i32* %13, align 4
  %110 = sub nsw i32 %109, 4
  store i32 %110, i32* %13, align 4
  %111 = load i32*, i32** %14, align 8
  %112 = getelementptr inbounds i32, i32* %111, i32 1
  store i32* %112, i32** %14, align 8
  br label %92

113:                                              ; preds = %98
  %114 = load i32, i32* %11, align 4
  %115 = icmp ne i32 %114, 0
  br i1 %115, label %119, label %116

116:                                              ; preds = %113
  %117 = load %struct.adapter*, %struct.adapter** %15, align 8
  %118 = call i32 @t3_seeprom_wp(%struct.adapter* %117, i32 1)
  store i32 %118, i32* %11, align 4
  br label %119

119:                                              ; preds = %116, %113
  br label %120

120:                                              ; preds = %119, %89, %70
  %121 = load i32*, i32** %10, align 8
  %122 = load i32*, i32** %7, align 8
  %123 = icmp ne i32* %121, %122
  br i1 %123, label %124, label %128

124:                                              ; preds = %120
  %125 = load i32*, i32** %10, align 8
  %126 = load i32, i32* @M_DEVBUF, align 4
  %127 = call i32 @free(i32* %125, i32 %126)
  br label %128

128:                                              ; preds = %124, %120
  %129 = load i32, i32* %11, align 4
  store i32 %129, i32* %5, align 4
  br label %130

130:                                              ; preds = %128, %43
  %131 = load i32, i32* %5, align 4
  ret i32 %131
}

declare dso_local i32* @malloc(i32, i32, i32) #1

declare dso_local i32 @t3_seeprom_read(%struct.adapter*, i32, i32*) #1

declare dso_local i32 @memcpy(i32*, i32*, i32) #1

declare dso_local i32 @t3_seeprom_wp(%struct.adapter*, i32) #1

declare dso_local i32 @t3_seeprom_write(%struct.adapter*, i32, i32) #1

declare dso_local i32 @free(i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
