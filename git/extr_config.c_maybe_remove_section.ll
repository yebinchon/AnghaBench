; ModuleID = '/home/carl/AnghaBench/git/extr_config.c_maybe_remove_section.c'
source_filename = "/home/carl/AnghaBench/git/extr_config.c_maybe_remove_section.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.config_store_data = type { i32*, i32, i32, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32, i64, i64, i64 }

@CONFIG_EVENT_COMMENT = common dso_local global i32 0, align 4
@CONFIG_EVENT_ENTRY = common dso_local global i32 0, align 4
@CONFIG_EVENT_SECTION = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.config_store_data*, i64*, i64*, i32*)* @maybe_remove_section to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @maybe_remove_section(%struct.config_store_data* %0, i64* %1, i64* %2, i32* %3) #0 {
  %5 = alloca %struct.config_store_data*, align 8
  %6 = alloca i64*, align 8
  %7 = alloca i64*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca i64, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  store %struct.config_store_data* %0, %struct.config_store_data** %5, align 8
  store i64* %1, i64** %6, align 8
  store i64* %2, i64** %7, align 8
  store i32* %3, i32** %8, align 8
  store i32 0, i32* %12, align 4
  %15 = load i32*, i32** %8, align 8
  %16 = load i32, i32* %15, align 4
  store i32 %16, i32* %11, align 4
  %17 = load %struct.config_store_data*, %struct.config_store_data** %5, align 8
  %18 = getelementptr inbounds %struct.config_store_data, %struct.config_store_data* %17, i32 0, i32 0
  %19 = load i32*, i32** %18, align 8
  %20 = load i32, i32* %11, align 4
  %21 = sext i32 %20 to i64
  %22 = getelementptr inbounds i32, i32* %19, i64 %21
  %23 = load i32, i32* %22, align 4
  store i32 %23, i32* %10, align 4
  br label %24

24:                                               ; preds = %68, %4
  %25 = load i32, i32* %10, align 4
  %26 = icmp sgt i32 %25, 0
  br i1 %26, label %27, label %71

27:                                               ; preds = %24
  %28 = load %struct.config_store_data*, %struct.config_store_data** %5, align 8
  %29 = getelementptr inbounds %struct.config_store_data, %struct.config_store_data* %28, i32 0, i32 3
  %30 = load %struct.TYPE_2__*, %struct.TYPE_2__** %29, align 8
  %31 = load i32, i32* %10, align 4
  %32 = sub nsw i32 %31, 1
  %33 = sext i32 %32 to i64
  %34 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %30, i64 %33
  %35 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %34, i32 0, i32 0
  %36 = load i32, i32* %35, align 8
  store i32 %36, i32* %13, align 4
  %37 = load i32, i32* %13, align 4
  %38 = load i32, i32* @CONFIG_EVENT_COMMENT, align 4
  %39 = icmp eq i32 %37, %38
  br i1 %39, label %40, label %41

40:                                               ; preds = %27
  br label %183

41:                                               ; preds = %27
  %42 = load i32, i32* %13, align 4
  %43 = load i32, i32* @CONFIG_EVENT_ENTRY, align 4
  %44 = icmp eq i32 %42, %43
  br i1 %44, label %45, label %50

45:                                               ; preds = %41
  %46 = load i32, i32* %12, align 4
  %47 = icmp ne i32 %46, 0
  br i1 %47, label %49, label %48

48:                                               ; preds = %45
  br label %183

49:                                               ; preds = %45
  br label %71

50:                                               ; preds = %41
  %51 = load i32, i32* %13, align 4
  %52 = load i32, i32* @CONFIG_EVENT_SECTION, align 4
  %53 = icmp eq i32 %51, %52
  br i1 %53, label %54, label %67

54:                                               ; preds = %50
  %55 = load %struct.config_store_data*, %struct.config_store_data** %5, align 8
  %56 = getelementptr inbounds %struct.config_store_data, %struct.config_store_data* %55, i32 0, i32 3
  %57 = load %struct.TYPE_2__*, %struct.TYPE_2__** %56, align 8
  %58 = load i32, i32* %10, align 4
  %59 = sub nsw i32 %58, 1
  %60 = sext i32 %59 to i64
  %61 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %57, i64 %60
  %62 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %61, i32 0, i32 3
  %63 = load i64, i64* %62, align 8
  %64 = icmp ne i64 %63, 0
  br i1 %64, label %66, label %65

65:                                               ; preds = %54
  br label %71

66:                                               ; preds = %54
  store i32 1, i32* %12, align 4
  br label %67

67:                                               ; preds = %66, %50
  br label %68

68:                                               ; preds = %67
  %69 = load i32, i32* %10, align 4
  %70 = add nsw i32 %69, -1
  store i32 %70, i32* %10, align 4
  br label %24

71:                                               ; preds = %65, %49, %24
  %72 = load %struct.config_store_data*, %struct.config_store_data** %5, align 8
  %73 = getelementptr inbounds %struct.config_store_data, %struct.config_store_data* %72, i32 0, i32 3
  %74 = load %struct.TYPE_2__*, %struct.TYPE_2__** %73, align 8
  %75 = load i32, i32* %10, align 4
  %76 = sext i32 %75 to i64
  %77 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %74, i64 %76
  %78 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %77, i32 0, i32 1
  %79 = load i64, i64* %78, align 8
  store i64 %79, i64* %9, align 8
  %80 = load %struct.config_store_data*, %struct.config_store_data** %5, align 8
  %81 = getelementptr inbounds %struct.config_store_data, %struct.config_store_data* %80, i32 0, i32 0
  %82 = load i32*, i32** %81, align 8
  %83 = load i32, i32* %11, align 4
  %84 = sext i32 %83 to i64
  %85 = getelementptr inbounds i32, i32* %82, i64 %84
  %86 = load i32, i32* %85, align 4
  %87 = add nsw i32 %86, 1
  store i32 %87, i32* %10, align 4
  br label %88

88:                                               ; preds = %147, %71
  %89 = load i32, i32* %10, align 4
  %90 = load %struct.config_store_data*, %struct.config_store_data** %5, align 8
  %91 = getelementptr inbounds %struct.config_store_data, %struct.config_store_data* %90, i32 0, i32 1
  %92 = load i32, i32* %91, align 8
  %93 = icmp slt i32 %89, %92
  br i1 %93, label %94, label %150

94:                                               ; preds = %88
  %95 = load %struct.config_store_data*, %struct.config_store_data** %5, align 8
  %96 = getelementptr inbounds %struct.config_store_data, %struct.config_store_data* %95, i32 0, i32 3
  %97 = load %struct.TYPE_2__*, %struct.TYPE_2__** %96, align 8
  %98 = load i32, i32* %10, align 4
  %99 = sext i32 %98 to i64
  %100 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %97, i64 %99
  %101 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %100, i32 0, i32 0
  %102 = load i32, i32* %101, align 8
  store i32 %102, i32* %14, align 4
  %103 = load i32, i32* %14, align 4
  %104 = load i32, i32* @CONFIG_EVENT_COMMENT, align 4
  %105 = icmp eq i32 %103, %104
  br i1 %105, label %106, label %107

106:                                              ; preds = %94
  br label %183

107:                                              ; preds = %94
  %108 = load i32, i32* %14, align 4
  %109 = load i32, i32* @CONFIG_EVENT_SECTION, align 4
  %110 = icmp eq i32 %108, %109
  br i1 %110, label %111, label %123

111:                                              ; preds = %107
  %112 = load %struct.config_store_data*, %struct.config_store_data** %5, align 8
  %113 = getelementptr inbounds %struct.config_store_data, %struct.config_store_data* %112, i32 0, i32 3
  %114 = load %struct.TYPE_2__*, %struct.TYPE_2__** %113, align 8
  %115 = load i32, i32* %10, align 4
  %116 = sext i32 %115 to i64
  %117 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %114, i64 %116
  %118 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %117, i32 0, i32 3
  %119 = load i64, i64* %118, align 8
  %120 = icmp ne i64 %119, 0
  br i1 %120, label %121, label %122

121:                                              ; preds = %111
  br label %147

122:                                              ; preds = %111
  br label %150

123:                                              ; preds = %107
  %124 = load i32, i32* %14, align 4
  %125 = load i32, i32* @CONFIG_EVENT_ENTRY, align 4
  %126 = icmp eq i32 %124, %125
  br i1 %126, label %127, label %146

127:                                              ; preds = %123
  %128 = load i32, i32* %11, align 4
  %129 = add nsw i32 %128, 1
  store i32 %129, i32* %11, align 4
  %130 = load %struct.config_store_data*, %struct.config_store_data** %5, align 8
  %131 = getelementptr inbounds %struct.config_store_data, %struct.config_store_data* %130, i32 0, i32 2
  %132 = load i32, i32* %131, align 4
  %133 = icmp slt i32 %129, %132
  br i1 %133, label %134, label %145

134:                                              ; preds = %127
  %135 = load i32, i32* %10, align 4
  %136 = load %struct.config_store_data*, %struct.config_store_data** %5, align 8
  %137 = getelementptr inbounds %struct.config_store_data, %struct.config_store_data* %136, i32 0, i32 0
  %138 = load i32*, i32** %137, align 8
  %139 = load i32, i32* %11, align 4
  %140 = sext i32 %139 to i64
  %141 = getelementptr inbounds i32, i32* %138, i64 %140
  %142 = load i32, i32* %141, align 4
  %143 = icmp eq i32 %135, %142
  br i1 %143, label %144, label %145

144:                                              ; preds = %134
  br label %147

145:                                              ; preds = %134, %127
  br label %183

146:                                              ; preds = %123
  br label %147

147:                                              ; preds = %146, %144, %121
  %148 = load i32, i32* %10, align 4
  %149 = add nsw i32 %148, 1
  store i32 %149, i32* %10, align 4
  br label %88

150:                                              ; preds = %122, %88
  %151 = load i32, i32* %11, align 4
  %152 = load i32*, i32** %8, align 8
  store i32 %151, i32* %152, align 4
  %153 = load i64, i64* %9, align 8
  %154 = load i64*, i64** %6, align 8
  store i64 %153, i64* %154, align 8
  %155 = load i32, i32* %10, align 4
  %156 = load %struct.config_store_data*, %struct.config_store_data** %5, align 8
  %157 = getelementptr inbounds %struct.config_store_data, %struct.config_store_data* %156, i32 0, i32 1
  %158 = load i32, i32* %157, align 8
  %159 = icmp slt i32 %155, %158
  br i1 %159, label %160, label %170

160:                                              ; preds = %150
  %161 = load %struct.config_store_data*, %struct.config_store_data** %5, align 8
  %162 = getelementptr inbounds %struct.config_store_data, %struct.config_store_data* %161, i32 0, i32 3
  %163 = load %struct.TYPE_2__*, %struct.TYPE_2__** %162, align 8
  %164 = load i32, i32* %10, align 4
  %165 = sext i32 %164 to i64
  %166 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %163, i64 %165
  %167 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %166, i32 0, i32 1
  %168 = load i64, i64* %167, align 8
  %169 = load i64*, i64** %7, align 8
  store i64 %168, i64* %169, align 8
  br label %183

170:                                              ; preds = %150
  %171 = load %struct.config_store_data*, %struct.config_store_data** %5, align 8
  %172 = getelementptr inbounds %struct.config_store_data, %struct.config_store_data* %171, i32 0, i32 3
  %173 = load %struct.TYPE_2__*, %struct.TYPE_2__** %172, align 8
  %174 = load %struct.config_store_data*, %struct.config_store_data** %5, align 8
  %175 = getelementptr inbounds %struct.config_store_data, %struct.config_store_data* %174, i32 0, i32 1
  %176 = load i32, i32* %175, align 8
  %177 = sub nsw i32 %176, 1
  %178 = sext i32 %177 to i64
  %179 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %173, i64 %178
  %180 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %179, i32 0, i32 2
  %181 = load i64, i64* %180, align 8
  %182 = load i64*, i64** %7, align 8
  store i64 %181, i64* %182, align 8
  br label %183

183:                                              ; preds = %40, %48, %106, %145, %170, %160
  ret void
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
