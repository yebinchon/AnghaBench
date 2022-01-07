; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/cxgb/extr_cxgb_main.c_cxgb_setup_interrupts.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/cxgb/extr_cxgb_main.c_cxgb_setup_interrupts.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_7__ = type { i32, i32, i8*, i32, i32*, i32, i8**, %struct.resource**, %struct.TYPE_6__, %struct.resource*, i32 }
%struct.TYPE_6__ = type { %struct.TYPE_7__* }
%struct.resource = type { i32 }

@USING_MSI = common dso_local global i32 0, align 4
@USING_MSIX = common dso_local global i32 0, align 4
@SYS_RES_IRQ = common dso_local global i32 0, align 4
@RF_SHAREABLE = common dso_local global i32 0, align 4
@RF_ACTIVE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [36 x i8] c"Cannot allocate interrupt (%x, %u)\0A\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@INTR_MPSAFE = common dso_local global i32 0, align 4
@INTR_TYPE_NET = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [38 x i8] c"Cannot set up interrupt (%x, %u, %d)\0A\00", align 1
@.str.2 = private unnamed_addr constant [4 x i8] c"err\00", align 1
@.str.3 = private unnamed_addr constant [42 x i8] c"Cannot allocate interrupt for message %d\0A\00", align 1
@t3_intr_msix = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [45 x i8] c"Cannot set up interrupt for message %d (%d)\0A\00", align 1
@.str.5 = private unnamed_addr constant [5 x i8] c"qs%d\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_7__*)* @cxgb_setup_interrupts to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @cxgb_setup_interrupts(%struct.TYPE_7__* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.TYPE_7__*, align 8
  %4 = alloca %struct.resource*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store %struct.TYPE_7__* %0, %struct.TYPE_7__** %3, align 8
  %10 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  %11 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %10, i32 0, i32 0
  %12 = load i32, i32* %11, align 8
  %13 = load i32, i32* @USING_MSI, align 4
  %14 = load i32, i32* @USING_MSIX, align 4
  %15 = or i32 %13, %14
  %16 = and i32 %12, %15
  store i32 %16, i32* %9, align 4
  %17 = load i32, i32* %9, align 4
  %18 = icmp ne i32 %17, 0
  %19 = zext i1 %18 to i64
  %20 = select i1 %18, i32 1, i32 0
  %21 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  %22 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %21, i32 0, i32 1
  store i32 %20, i32* %22, align 4
  %23 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  %24 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %23, i32 0, i32 5
  %25 = load i32, i32* %24, align 8
  %26 = load i32, i32* @SYS_RES_IRQ, align 4
  %27 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  %28 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %27, i32 0, i32 1
  %29 = load i32, i32* @RF_SHAREABLE, align 4
  %30 = load i32, i32* @RF_ACTIVE, align 4
  %31 = or i32 %29, %30
  %32 = call i8* @bus_alloc_resource_any(i32 %25, i32 %26, i32* %28, i32 %31)
  %33 = bitcast i8* %32 to %struct.resource*
  %34 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  %35 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %34, i32 0, i32 9
  store %struct.resource* %33, %struct.resource** %35, align 8
  %36 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  %37 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %36, i32 0, i32 9
  %38 = load %struct.resource*, %struct.resource** %37, align 8
  %39 = icmp eq %struct.resource* %38, null
  br i1 %39, label %40, label %52

40:                                               ; preds = %1
  %41 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  %42 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %41, i32 0, i32 5
  %43 = load i32, i32* %42, align 8
  %44 = load i32, i32* %9, align 4
  %45 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  %46 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %45, i32 0, i32 1
  %47 = load i32, i32* %46, align 4
  %48 = call i32 (i32, i8*, i32, ...) @device_printf(i32 %43, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str, i64 0, i64 0), i32 %44, i32 %47)
  %49 = load i32, i32* @EINVAL, align 4
  store i32 %49, i32* %8, align 4
  %50 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  %51 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %50, i32 0, i32 1
  store i32 0, i32* %51, align 4
  br label %99

52:                                               ; preds = %1
  %53 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  %54 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %53, i32 0, i32 5
  %55 = load i32, i32* %54, align 8
  %56 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  %57 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %56, i32 0, i32 9
  %58 = load %struct.resource*, %struct.resource** %57, align 8
  %59 = load i32, i32* @INTR_MPSAFE, align 4
  %60 = load i32, i32* @INTR_TYPE_NET, align 4
  %61 = or i32 %59, %60
  %62 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  %63 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %62, i32 0, i32 10
  %64 = load i32, i32* %63, align 8
  %65 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  %66 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  %67 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %66, i32 0, i32 2
  %68 = call i32 @bus_setup_intr(i32 %55, %struct.resource* %58, i32 %61, i32* null, i32 %64, %struct.TYPE_7__* %65, i8** %67)
  store i32 %68, i32* %8, align 4
  %69 = load i32, i32* %8, align 4
  %70 = icmp ne i32 %69, 0
  br i1 %70, label %71, label %98

71:                                               ; preds = %52
  %72 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  %73 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %72, i32 0, i32 5
  %74 = load i32, i32* %73, align 8
  %75 = load i32, i32* %9, align 4
  %76 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  %77 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %76, i32 0, i32 1
  %78 = load i32, i32* %77, align 4
  %79 = load i32, i32* %8, align 4
  %80 = call i32 (i32, i8*, i32, ...) @device_printf(i32 %74, i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.1, i64 0, i64 0), i32 %75, i32 %78, i32 %79)
  %81 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  %82 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %81, i32 0, i32 5
  %83 = load i32, i32* %82, align 8
  %84 = load i32, i32* @SYS_RES_IRQ, align 4
  %85 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  %86 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %85, i32 0, i32 1
  %87 = load i32, i32* %86, align 4
  %88 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  %89 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %88, i32 0, i32 9
  %90 = load %struct.resource*, %struct.resource** %89, align 8
  %91 = call i32 @bus_release_resource(i32 %83, i32 %84, i32 %87, %struct.resource* %90)
  %92 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  %93 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %92, i32 0, i32 2
  store i8* null, i8** %93, align 8
  %94 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  %95 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %94, i32 0, i32 9
  store %struct.resource* null, %struct.resource** %95, align 8
  %96 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  %97 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %96, i32 0, i32 1
  store i32 0, i32* %97, align 4
  br label %98

98:                                               ; preds = %71, %52
  br label %99

99:                                               ; preds = %98, %40
  %100 = load i32, i32* %9, align 4
  %101 = load i32, i32* @USING_MSIX, align 4
  %102 = and i32 %100, %101
  %103 = icmp ne i32 %102, 0
  br i1 %103, label %104, label %107

104:                                              ; preds = %99
  %105 = load i32, i32* %8, align 4
  %106 = icmp ne i32 %105, 0
  br i1 %106, label %107, label %109

107:                                              ; preds = %104, %99
  %108 = load i32, i32* %8, align 4
  store i32 %108, i32* %2, align 4
  br label %221

109:                                              ; preds = %104
  %110 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  %111 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %110, i32 0, i32 5
  %112 = load i32, i32* %111, align 8
  %113 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  %114 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %113, i32 0, i32 9
  %115 = load %struct.resource*, %struct.resource** %114, align 8
  %116 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  %117 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %116, i32 0, i32 2
  %118 = load i8*, i8** %117, align 8
  %119 = call i32 (i32, %struct.resource*, i8*, i8*, ...) @bus_describe_intr(i32 %112, %struct.resource* %115, i8* %118, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.2, i64 0, i64 0))
  store i32 0, i32* %6, align 4
  br label %120

120:                                              ; preds = %210, %109
  %121 = load i32, i32* %6, align 4
  %122 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  %123 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %122, i32 0, i32 3
  %124 = load i32, i32* %123, align 8
  %125 = sub nsw i32 %124, 1
  %126 = icmp slt i32 %121, %125
  br i1 %126, label %127, label %213

127:                                              ; preds = %120
  %128 = load i32, i32* %6, align 4
  %129 = add nsw i32 %128, 2
  store i32 %129, i32* %7, align 4
  %130 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  %131 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %130, i32 0, i32 5
  %132 = load i32, i32* %131, align 8
  %133 = load i32, i32* @SYS_RES_IRQ, align 4
  %134 = load i32, i32* @RF_SHAREABLE, align 4
  %135 = load i32, i32* @RF_ACTIVE, align 4
  %136 = or i32 %134, %135
  %137 = call i8* @bus_alloc_resource_any(i32 %132, i32 %133, i32* %7, i32 %136)
  %138 = bitcast i8* %137 to %struct.resource*
  store %struct.resource* %138, %struct.resource** %4, align 8
  %139 = load %struct.resource*, %struct.resource** %4, align 8
  %140 = icmp eq %struct.resource* %139, null
  br i1 %140, label %141, label %148

141:                                              ; preds = %127
  %142 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  %143 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %142, i32 0, i32 5
  %144 = load i32, i32* %143, align 8
  %145 = load i32, i32* %7, align 4
  %146 = call i32 (i32, i8*, i32, ...) @device_printf(i32 %144, i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str.3, i64 0, i64 0), i32 %145)
  %147 = load i32, i32* @EINVAL, align 4
  store i32 %147, i32* %8, align 4
  br label %213

148:                                              ; preds = %127
  %149 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  %150 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %149, i32 0, i32 5
  %151 = load i32, i32* %150, align 8
  %152 = load %struct.resource*, %struct.resource** %4, align 8
  %153 = load i32, i32* @INTR_MPSAFE, align 4
  %154 = load i32, i32* @INTR_TYPE_NET, align 4
  %155 = or i32 %153, %154
  %156 = load i32, i32* @t3_intr_msix, align 4
  %157 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  %158 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %157, i32 0, i32 8
  %159 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %158, i32 0, i32 0
  %160 = load %struct.TYPE_7__*, %struct.TYPE_7__** %159, align 8
  %161 = load i32, i32* %6, align 4
  %162 = sext i32 %161 to i64
  %163 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %160, i64 %162
  %164 = call i32 @bus_setup_intr(i32 %151, %struct.resource* %152, i32 %155, i32* null, i32 %156, %struct.TYPE_7__* %163, i8** %5)
  store i32 %164, i32* %8, align 4
  %165 = load i32, i32* %8, align 4
  %166 = icmp ne i32 %165, 0
  br i1 %166, label %167, label %181

167:                                              ; preds = %148
  %168 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  %169 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %168, i32 0, i32 5
  %170 = load i32, i32* %169, align 8
  %171 = load i32, i32* %7, align 4
  %172 = load i32, i32* %8, align 4
  %173 = call i32 (i32, i8*, i32, ...) @device_printf(i32 %170, i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str.4, i64 0, i64 0), i32 %171, i32 %172)
  %174 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  %175 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %174, i32 0, i32 5
  %176 = load i32, i32* %175, align 8
  %177 = load i32, i32* @SYS_RES_IRQ, align 4
  %178 = load i32, i32* %7, align 4
  %179 = load %struct.resource*, %struct.resource** %4, align 8
  %180 = call i32 @bus_release_resource(i32 %176, i32 %177, i32 %178, %struct.resource* %179)
  br label %213

181:                                              ; preds = %148
  %182 = load i32, i32* %7, align 4
  %183 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  %184 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %183, i32 0, i32 4
  %185 = load i32*, i32** %184, align 8
  %186 = load i32, i32* %6, align 4
  %187 = sext i32 %186 to i64
  %188 = getelementptr inbounds i32, i32* %185, i64 %187
  store i32 %182, i32* %188, align 4
  %189 = load %struct.resource*, %struct.resource** %4, align 8
  %190 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  %191 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %190, i32 0, i32 7
  %192 = load %struct.resource**, %struct.resource*** %191, align 8
  %193 = load i32, i32* %6, align 4
  %194 = sext i32 %193 to i64
  %195 = getelementptr inbounds %struct.resource*, %struct.resource** %192, i64 %194
  store %struct.resource* %189, %struct.resource** %195, align 8
  %196 = load i8*, i8** %5, align 8
  %197 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  %198 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %197, i32 0, i32 6
  %199 = load i8**, i8*** %198, align 8
  %200 = load i32, i32* %6, align 4
  %201 = sext i32 %200 to i64
  %202 = getelementptr inbounds i8*, i8** %199, i64 %201
  store i8* %196, i8** %202, align 8
  %203 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  %204 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %203, i32 0, i32 5
  %205 = load i32, i32* %204, align 8
  %206 = load %struct.resource*, %struct.resource** %4, align 8
  %207 = load i8*, i8** %5, align 8
  %208 = load i32, i32* %6, align 4
  %209 = call i32 (i32, %struct.resource*, i8*, i8*, ...) @bus_describe_intr(i32 %205, %struct.resource* %206, i8* %207, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.5, i64 0, i64 0), i32 %208)
  br label %210

210:                                              ; preds = %181
  %211 = load i32, i32* %6, align 4
  %212 = add nsw i32 %211, 1
  store i32 %212, i32* %6, align 4
  br label %120

213:                                              ; preds = %167, %141, %120
  %214 = load i32, i32* %8, align 4
  %215 = icmp ne i32 %214, 0
  br i1 %215, label %216, label %219

216:                                              ; preds = %213
  %217 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  %218 = call i32 @cxgb_teardown_interrupts(%struct.TYPE_7__* %217)
  br label %219

219:                                              ; preds = %216, %213
  %220 = load i32, i32* %8, align 4
  store i32 %220, i32* %2, align 4
  br label %221

221:                                              ; preds = %219, %107
  %222 = load i32, i32* %2, align 4
  ret i32 %222
}

declare dso_local i8* @bus_alloc_resource_any(i32, i32, i32*, i32) #1

declare dso_local i32 @device_printf(i32, i8*, i32, ...) #1

declare dso_local i32 @bus_setup_intr(i32, %struct.resource*, i32, i32*, i32, %struct.TYPE_7__*, i8**) #1

declare dso_local i32 @bus_release_resource(i32, i32, i32, %struct.resource*) #1

declare dso_local i32 @bus_describe_intr(i32, %struct.resource*, i8*, i8*, ...) #1

declare dso_local i32 @cxgb_teardown_interrupts(%struct.TYPE_7__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
