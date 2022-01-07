; ModuleID = '/home/carl/AnghaBench/freebsd/sys/vm/extr_uma_core.c_zone_alloc_item_locked.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/vm/extr_uma_core.c_zone_alloc_item_locked.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_16__ = type { i64, i64, i64, i32 (i32, i8**, i32, i32, i32)*, i64 (i8*, i32, i32)*, i64 (i8*, i32, i8*, i32)*, i64, i32, i32, i32, i32, i32, i32, i32 }

@M_NOWAIT = common dso_local global i32 0, align 4
@PVM = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [10 x i8] c"zonelimit\00", align 1
@UMA_ANYDOMAIN = common dso_local global i32 0, align 4
@SKIP_FINI = common dso_local global i32 0, align 4
@SKIP_CNT = common dso_local global i32 0, align 4
@SKIP_DTOR = common dso_local global i32 0, align 4
@M_ZERO = common dso_local global i32 0, align 4
@KTR_UMA = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [36 x i8] c"zone_alloc_item item %p from %s(%p)\00", align 1
@.str.2 = private unnamed_addr constant [35 x i8] c"zone_alloc_item failed from %s(%p)\00", align 1
@trash_dtor = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i8* (%struct.TYPE_16__*, i8*, i32, i32)* @zone_alloc_item_locked to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i8* @zone_alloc_item_locked(%struct.TYPE_16__* %0, i8* %1, i32 %2, i32 %3) #0 {
  %5 = alloca i8*, align 8
  %6 = alloca %struct.TYPE_16__*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i8*, align 8
  store %struct.TYPE_16__* %0, %struct.TYPE_16__** %6, align 8
  store i8* %1, i8** %7, align 8
  store i32 %2, i32* %8, align 4
  store i32 %3, i32* %9, align 4
  %11 = load %struct.TYPE_16__*, %struct.TYPE_16__** %6, align 8
  %12 = call i32 @ZONE_LOCK_ASSERT(%struct.TYPE_16__* %11)
  %13 = load %struct.TYPE_16__*, %struct.TYPE_16__** %6, align 8
  %14 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %13, i32 0, i32 0
  %15 = load i64, i64* %14, align 8
  %16 = icmp sgt i64 %15, 0
  br i1 %16, label %17, label %88

17:                                               ; preds = %4
  %18 = load %struct.TYPE_16__*, %struct.TYPE_16__** %6, align 8
  %19 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %18, i32 0, i32 1
  %20 = load i64, i64* %19, align 8
  %21 = load %struct.TYPE_16__*, %struct.TYPE_16__** %6, align 8
  %22 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %21, i32 0, i32 0
  %23 = load i64, i64* %22, align 8
  %24 = icmp sge i64 %20, %23
  br i1 %24, label %25, label %83

25:                                               ; preds = %17
  %26 = load %struct.TYPE_16__*, %struct.TYPE_16__** %6, align 8
  %27 = call i32 @zone_log_warning(%struct.TYPE_16__* %26)
  %28 = load %struct.TYPE_16__*, %struct.TYPE_16__** %6, align 8
  %29 = call i32 @zone_maxaction(%struct.TYPE_16__* %28)
  %30 = load i32, i32* %9, align 4
  %31 = load i32, i32* @M_NOWAIT, align 4
  %32 = and i32 %30, %31
  %33 = icmp ne i32 %32, 0
  br i1 %33, label %34, label %37

34:                                               ; preds = %25
  %35 = load %struct.TYPE_16__*, %struct.TYPE_16__** %6, align 8
  %36 = call i32 @ZONE_UNLOCK(%struct.TYPE_16__* %35)
  store i8* null, i8** %5, align 8
  br label %209

37:                                               ; preds = %25
  %38 = load %struct.TYPE_16__*, %struct.TYPE_16__** %6, align 8
  %39 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %38, i32 0, i32 13
  %40 = load i32, i32* %39, align 8
  %41 = add nsw i32 %40, 1
  store i32 %41, i32* %39, align 8
  %42 = load %struct.TYPE_16__*, %struct.TYPE_16__** %6, align 8
  %43 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %42, i32 0, i32 2
  %44 = load i64, i64* %43, align 8
  %45 = add nsw i64 %44, 1
  store i64 %45, i64* %43, align 8
  br label %46

46:                                               ; preds = %54, %37
  %47 = load %struct.TYPE_16__*, %struct.TYPE_16__** %6, align 8
  %48 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %47, i32 0, i32 1
  %49 = load i64, i64* %48, align 8
  %50 = load %struct.TYPE_16__*, %struct.TYPE_16__** %6, align 8
  %51 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %50, i32 0, i32 0
  %52 = load i64, i64* %51, align 8
  %53 = icmp sge i64 %49, %52
  br i1 %53, label %54, label %61

54:                                               ; preds = %46
  %55 = load %struct.TYPE_16__*, %struct.TYPE_16__** %6, align 8
  %56 = load %struct.TYPE_16__*, %struct.TYPE_16__** %6, align 8
  %57 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %56, i32 0, i32 12
  %58 = load i32, i32* %57, align 4
  %59 = load i32, i32* @PVM, align 4
  %60 = call i32 @mtx_sleep(%struct.TYPE_16__* %55, i32 %58, i32 %59, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str, i64 0, i64 0), i32 0)
  br label %46

61:                                               ; preds = %46
  %62 = load %struct.TYPE_16__*, %struct.TYPE_16__** %6, align 8
  %63 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %62, i32 0, i32 2
  %64 = load i64, i64* %63, align 8
  %65 = add nsw i64 %64, -1
  store i64 %65, i64* %63, align 8
  %66 = load %struct.TYPE_16__*, %struct.TYPE_16__** %6, align 8
  %67 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %66, i32 0, i32 2
  %68 = load i64, i64* %67, align 8
  %69 = icmp sgt i64 %68, 0
  br i1 %69, label %70, label %82

70:                                               ; preds = %61
  %71 = load %struct.TYPE_16__*, %struct.TYPE_16__** %6, align 8
  %72 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %71, i32 0, i32 1
  %73 = load i64, i64* %72, align 8
  %74 = add nsw i64 %73, 1
  %75 = load %struct.TYPE_16__*, %struct.TYPE_16__** %6, align 8
  %76 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %75, i32 0, i32 0
  %77 = load i64, i64* %76, align 8
  %78 = icmp slt i64 %74, %77
  br i1 %78, label %79, label %82

79:                                               ; preds = %70
  %80 = load %struct.TYPE_16__*, %struct.TYPE_16__** %6, align 8
  %81 = call i32 @wakeup_one(%struct.TYPE_16__* %80)
  br label %82

82:                                               ; preds = %79, %70, %61
  br label %83

83:                                               ; preds = %82, %17
  %84 = load %struct.TYPE_16__*, %struct.TYPE_16__** %6, align 8
  %85 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %84, i32 0, i32 1
  %86 = load i64, i64* %85, align 8
  %87 = add nsw i64 %86, 1
  store i64 %87, i64* %85, align 8
  br label %88

88:                                               ; preds = %83, %4
  %89 = load %struct.TYPE_16__*, %struct.TYPE_16__** %6, align 8
  %90 = call i32 @ZONE_UNLOCK(%struct.TYPE_16__* %89)
  %91 = load i32, i32* %8, align 4
  %92 = load i32, i32* @UMA_ANYDOMAIN, align 4
  %93 = icmp ne i32 %91, %92
  br i1 %93, label %94, label %100

94:                                               ; preds = %88
  %95 = load i32, i32* %8, align 4
  %96 = call i64 @VM_DOMAIN_EMPTY(i32 %95)
  %97 = icmp ne i64 %96, 0
  br i1 %97, label %98, label %100

98:                                               ; preds = %94
  %99 = load i32, i32* @UMA_ANYDOMAIN, align 4
  store i32 %99, i32* %8, align 4
  br label %100

100:                                              ; preds = %98, %94, %88
  %101 = load %struct.TYPE_16__*, %struct.TYPE_16__** %6, align 8
  %102 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %101, i32 0, i32 3
  %103 = load i32 (i32, i8**, i32, i32, i32)*, i32 (i32, i8**, i32, i32, i32)** %102, align 8
  %104 = load %struct.TYPE_16__*, %struct.TYPE_16__** %6, align 8
  %105 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %104, i32 0, i32 11
  %106 = load i32, i32* %105, align 8
  %107 = load i32, i32* %8, align 4
  %108 = load i32, i32* %9, align 4
  %109 = call i32 %103(i32 %106, i8** %10, i32 1, i32 %107, i32 %108)
  %110 = icmp ne i32 %109, 1
  br i1 %110, label %111, label %112

111:                                              ; preds = %100
  br label %184

112:                                              ; preds = %100
  %113 = load %struct.TYPE_16__*, %struct.TYPE_16__** %6, align 8
  %114 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %113, i32 0, i32 4
  %115 = load i64 (i8*, i32, i32)*, i64 (i8*, i32, i32)** %114, align 8
  %116 = icmp ne i64 (i8*, i32, i32)* %115, null
  br i1 %116, label %117, label %137

117:                                              ; preds = %112
  %118 = load %struct.TYPE_16__*, %struct.TYPE_16__** %6, align 8
  %119 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %118, i32 0, i32 4
  %120 = load i64 (i8*, i32, i32)*, i64 (i8*, i32, i32)** %119, align 8
  %121 = load i8*, i8** %10, align 8
  %122 = load %struct.TYPE_16__*, %struct.TYPE_16__** %6, align 8
  %123 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %122, i32 0, i32 10
  %124 = load i32, i32* %123, align 4
  %125 = load i32, i32* %9, align 4
  %126 = call i64 %120(i8* %121, i32 %124, i32 %125)
  %127 = icmp ne i64 %126, 0
  br i1 %127, label %128, label %136

128:                                              ; preds = %117
  %129 = load %struct.TYPE_16__*, %struct.TYPE_16__** %6, align 8
  %130 = load i8*, i8** %10, align 8
  %131 = load i8*, i8** %7, align 8
  %132 = load i32, i32* @SKIP_FINI, align 4
  %133 = load i32, i32* @SKIP_CNT, align 4
  %134 = or i32 %132, %133
  %135 = call i32 @zone_free_item(%struct.TYPE_16__* %129, i8* %130, i8* %131, i32 %134)
  br label %184

136:                                              ; preds = %117
  br label %137

137:                                              ; preds = %136, %112
  %138 = load %struct.TYPE_16__*, %struct.TYPE_16__** %6, align 8
  %139 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %138, i32 0, i32 5
  %140 = load i64 (i8*, i32, i8*, i32)*, i64 (i8*, i32, i8*, i32)** %139, align 8
  %141 = icmp ne i64 (i8*, i32, i8*, i32)* %140, null
  br i1 %141, label %142, label %162

142:                                              ; preds = %137
  %143 = load %struct.TYPE_16__*, %struct.TYPE_16__** %6, align 8
  %144 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %143, i32 0, i32 5
  %145 = load i64 (i8*, i32, i8*, i32)*, i64 (i8*, i32, i8*, i32)** %144, align 8
  %146 = load i8*, i8** %10, align 8
  %147 = load %struct.TYPE_16__*, %struct.TYPE_16__** %6, align 8
  %148 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %147, i32 0, i32 10
  %149 = load i32, i32* %148, align 4
  %150 = load i8*, i8** %7, align 8
  %151 = load i32, i32* %9, align 4
  %152 = call i64 %145(i8* %146, i32 %149, i8* %150, i32 %151)
  %153 = icmp ne i64 %152, 0
  br i1 %153, label %154, label %162

154:                                              ; preds = %142
  %155 = load %struct.TYPE_16__*, %struct.TYPE_16__** %6, align 8
  %156 = load i8*, i8** %10, align 8
  %157 = load i8*, i8** %7, align 8
  %158 = load i32, i32* @SKIP_DTOR, align 4
  %159 = load i32, i32* @SKIP_CNT, align 4
  %160 = or i32 %158, %159
  %161 = call i32 @zone_free_item(%struct.TYPE_16__* %155, i8* %156, i8* %157, i32 %160)
  br label %184

162:                                              ; preds = %142, %137
  %163 = load i32, i32* %9, align 4
  %164 = load i32, i32* @M_ZERO, align 4
  %165 = and i32 %163, %164
  %166 = icmp ne i32 %165, 0
  br i1 %166, label %167, label %171

167:                                              ; preds = %162
  %168 = load i8*, i8** %10, align 8
  %169 = load %struct.TYPE_16__*, %struct.TYPE_16__** %6, align 8
  %170 = call i32 @uma_zero_item(i8* %168, %struct.TYPE_16__* %169)
  br label %171

171:                                              ; preds = %167, %162
  %172 = load %struct.TYPE_16__*, %struct.TYPE_16__** %6, align 8
  %173 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %172, i32 0, i32 9
  %174 = load i32, i32* %173, align 8
  %175 = call i32 @counter_u64_add(i32 %174, i32 1)
  %176 = load i32, i32* @KTR_UMA, align 4
  %177 = load i8*, i8** %10, align 8
  %178 = load %struct.TYPE_16__*, %struct.TYPE_16__** %6, align 8
  %179 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %178, i32 0, i32 7
  %180 = load i32, i32* %179, align 8
  %181 = load %struct.TYPE_16__*, %struct.TYPE_16__** %6, align 8
  %182 = call i32 @CTR3(i32 %176, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.1, i64 0, i64 0), i8* %177, i32 %180, %struct.TYPE_16__* %181)
  %183 = load i8*, i8** %10, align 8
  store i8* %183, i8** %5, align 8
  br label %209

184:                                              ; preds = %154, %128, %111
  %185 = load %struct.TYPE_16__*, %struct.TYPE_16__** %6, align 8
  %186 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %185, i32 0, i32 0
  %187 = load i64, i64* %186, align 8
  %188 = icmp sgt i64 %187, 0
  br i1 %188, label %189, label %198

189:                                              ; preds = %184
  %190 = load %struct.TYPE_16__*, %struct.TYPE_16__** %6, align 8
  %191 = call i32 @ZONE_LOCK(%struct.TYPE_16__* %190)
  %192 = load %struct.TYPE_16__*, %struct.TYPE_16__** %6, align 8
  %193 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %192, i32 0, i32 1
  %194 = load i64, i64* %193, align 8
  %195 = add nsw i64 %194, -1
  store i64 %195, i64* %193, align 8
  %196 = load %struct.TYPE_16__*, %struct.TYPE_16__** %6, align 8
  %197 = call i32 @ZONE_UNLOCK(%struct.TYPE_16__* %196)
  br label %198

198:                                              ; preds = %189, %184
  %199 = load %struct.TYPE_16__*, %struct.TYPE_16__** %6, align 8
  %200 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %199, i32 0, i32 8
  %201 = load i32, i32* %200, align 4
  %202 = call i32 @counter_u64_add(i32 %201, i32 1)
  %203 = load i32, i32* @KTR_UMA, align 4
  %204 = load %struct.TYPE_16__*, %struct.TYPE_16__** %6, align 8
  %205 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %204, i32 0, i32 7
  %206 = load i32, i32* %205, align 8
  %207 = load %struct.TYPE_16__*, %struct.TYPE_16__** %6, align 8
  %208 = call i32 @CTR2(i32 %203, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.2, i64 0, i64 0), i32 %206, %struct.TYPE_16__* %207)
  store i8* null, i8** %5, align 8
  br label %209

209:                                              ; preds = %198, %171, %34
  %210 = load i8*, i8** %5, align 8
  ret i8* %210
}

declare dso_local i32 @ZONE_LOCK_ASSERT(%struct.TYPE_16__*) #1

declare dso_local i32 @zone_log_warning(%struct.TYPE_16__*) #1

declare dso_local i32 @zone_maxaction(%struct.TYPE_16__*) #1

declare dso_local i32 @ZONE_UNLOCK(%struct.TYPE_16__*) #1

declare dso_local i32 @mtx_sleep(%struct.TYPE_16__*, i32, i32, i8*, i32) #1

declare dso_local i32 @wakeup_one(%struct.TYPE_16__*) #1

declare dso_local i64 @VM_DOMAIN_EMPTY(i32) #1

declare dso_local i32 @zone_free_item(%struct.TYPE_16__*, i8*, i8*, i32) #1

declare dso_local i32 @uma_zero_item(i8*, %struct.TYPE_16__*) #1

declare dso_local i32 @counter_u64_add(i32, i32) #1

declare dso_local i32 @CTR3(i32, i8*, i8*, i32, %struct.TYPE_16__*) #1

declare dso_local i32 @ZONE_LOCK(%struct.TYPE_16__*) #1

declare dso_local i32 @CTR2(i32, i8*, i32, %struct.TYPE_16__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
