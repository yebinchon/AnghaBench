; ModuleID = '/home/carl/AnghaBench/freebsd/usr.sbin/ppp/extr_bundle.c_bundle_CalculateBandwidth.c'
source_filename = "/home/carl/AnghaBench/freebsd/usr.sbin/ppp/extr_bundle.c_bundle_CalculateBandwidth.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.bundle = type { i32, %struct.TYPE_20__*, %struct.TYPE_19__, %struct.TYPE_18__, %struct.datalink* }
%struct.TYPE_20__ = type { i64 }
%struct.TYPE_19__ = type { i64, i64 }
%struct.TYPE_18__ = type { %struct.TYPE_17__ }
%struct.TYPE_17__ = type { i64, %struct.TYPE_16__, i64 }
%struct.TYPE_16__ = type { i32 }
%struct.datalink = type { i64, i64, %struct.TYPE_11__*, %struct.TYPE_12__, %struct.datalink* }
%struct.TYPE_11__ = type { %struct.TYPE_15__, %struct.TYPE_13__ }
%struct.TYPE_15__ = type { %struct.TYPE_14__, i32 }
%struct.TYPE_14__ = type { i64 }
%struct.TYPE_13__ = type { i64 }
%struct.TYPE_12__ = type { i32 }

@DATALINK_OPEN = common dso_local global i64 0, align 8
@LogDEBUG = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [36 x i8] c"%s: %s: Cannot determine bandwidth\0A\00", align 1
@DEF_MRU = common dso_local global i64 0, align 8
@LogLCP = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [34 x i8] c"Reducing MTU to radius value %lu\0A\00", align 1
@.str.2 = private unnamed_addr constant [48 x i8] c"Reducing MTU from %lu to %lu (CCP requirement)\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @bundle_CalculateBandwidth(%struct.bundle* %0) #0 {
  %2 = alloca %struct.bundle*, align 8
  %3 = alloca %struct.datalink*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store %struct.bundle* %0, %struct.bundle** %2, align 8
  %7 = load %struct.bundle*, %struct.bundle** %2, align 8
  %8 = getelementptr inbounds %struct.bundle, %struct.bundle* %7, i32 0, i32 0
  store i32 0, i32* %8, align 8
  %9 = load %struct.bundle*, %struct.bundle** %2, align 8
  %10 = getelementptr inbounds %struct.bundle, %struct.bundle* %9, i32 0, i32 1
  %11 = load %struct.TYPE_20__*, %struct.TYPE_20__** %10, align 8
  %12 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %11, i32 0, i32 0
  store i64 0, i64* %12, align 8
  store i32 0, i32* %6, align 4
  %13 = load %struct.bundle*, %struct.bundle** %2, align 8
  %14 = getelementptr inbounds %struct.bundle, %struct.bundle* %13, i32 0, i32 4
  %15 = load %struct.datalink*, %struct.datalink** %14, align 8
  store %struct.datalink* %15, %struct.datalink** %3, align 8
  br label %16

16:                                               ; preds = %88, %1
  %17 = load %struct.datalink*, %struct.datalink** %3, align 8
  %18 = icmp ne %struct.datalink* %17, null
  br i1 %18, label %19, label %92

19:                                               ; preds = %16
  %20 = load %struct.datalink*, %struct.datalink** %3, align 8
  %21 = getelementptr inbounds %struct.datalink, %struct.datalink* %20, i32 0, i32 2
  %22 = load %struct.TYPE_11__*, %struct.TYPE_11__** %21, align 8
  %23 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %22, i32 0, i32 0
  %24 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %23, i32 0, i32 1
  %25 = call i32 @ccp_MTUOverhead(i32* %24)
  store i32 %25, i32* %5, align 4
  %26 = load i32, i32* %6, align 4
  %27 = load i32, i32* %5, align 4
  %28 = icmp slt i32 %26, %27
  br i1 %28, label %29, label %31

29:                                               ; preds = %19
  %30 = load i32, i32* %5, align 4
  store i32 %30, i32* %6, align 4
  br label %31

31:                                               ; preds = %29, %19
  %32 = load %struct.datalink*, %struct.datalink** %3, align 8
  %33 = getelementptr inbounds %struct.datalink, %struct.datalink* %32, i32 0, i32 0
  %34 = load i64, i64* %33, align 8
  %35 = load i64, i64* @DATALINK_OPEN, align 8
  %36 = icmp eq i64 %34, %35
  br i1 %36, label %37, label %87

37:                                               ; preds = %31
  %38 = load %struct.datalink*, %struct.datalink** %3, align 8
  %39 = getelementptr inbounds %struct.datalink, %struct.datalink* %38, i32 0, i32 3
  %40 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %39, i32 0, i32 0
  %41 = load i32, i32* %40, align 8
  store i32 %41, i32* %4, align 4
  %42 = icmp eq i32 %41, 0
  br i1 %42, label %43, label %61

43:                                               ; preds = %37
  %44 = load %struct.datalink*, %struct.datalink** %3, align 8
  %45 = getelementptr inbounds %struct.datalink, %struct.datalink* %44, i32 0, i32 2
  %46 = load %struct.TYPE_11__*, %struct.TYPE_11__** %45, align 8
  %47 = call i32 @physical_GetSpeed(%struct.TYPE_11__* %46)
  store i32 %47, i32* %4, align 4
  %48 = icmp eq i32 %47, 0
  br i1 %48, label %49, label %61

49:                                               ; preds = %43
  %50 = load i32, i32* @LogDEBUG, align 4
  %51 = load %struct.datalink*, %struct.datalink** %3, align 8
  %52 = getelementptr inbounds %struct.datalink, %struct.datalink* %51, i32 0, i32 1
  %53 = load i64, i64* %52, align 8
  %54 = load %struct.datalink*, %struct.datalink** %3, align 8
  %55 = getelementptr inbounds %struct.datalink, %struct.datalink* %54, i32 0, i32 2
  %56 = load %struct.TYPE_11__*, %struct.TYPE_11__** %55, align 8
  %57 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %56, i32 0, i32 1
  %58 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %57, i32 0, i32 0
  %59 = load i64, i64* %58, align 8
  %60 = call i32 (i32, i8*, i64, ...) @log_Printf(i32 %50, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str, i64 0, i64 0), i64 %53, i64 %59)
  br label %67

61:                                               ; preds = %43, %37
  %62 = load i32, i32* %4, align 4
  %63 = load %struct.bundle*, %struct.bundle** %2, align 8
  %64 = getelementptr inbounds %struct.bundle, %struct.bundle* %63, i32 0, i32 0
  %65 = load i32, i32* %64, align 8
  %66 = add nsw i32 %65, %62
  store i32 %66, i32* %64, align 8
  br label %67

67:                                               ; preds = %61, %49
  %68 = load %struct.bundle*, %struct.bundle** %2, align 8
  %69 = getelementptr inbounds %struct.bundle, %struct.bundle* %68, i32 0, i32 3
  %70 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %69, i32 0, i32 0
  %71 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %70, i32 0, i32 2
  %72 = load i64, i64* %71, align 8
  %73 = icmp ne i64 %72, 0
  br i1 %73, label %86, label %74

74:                                               ; preds = %67
  %75 = load %struct.datalink*, %struct.datalink** %3, align 8
  %76 = getelementptr inbounds %struct.datalink, %struct.datalink* %75, i32 0, i32 2
  %77 = load %struct.TYPE_11__*, %struct.TYPE_11__** %76, align 8
  %78 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %77, i32 0, i32 0
  %79 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %78, i32 0, i32 0
  %80 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %79, i32 0, i32 0
  %81 = load i64, i64* %80, align 8
  %82 = load %struct.bundle*, %struct.bundle** %2, align 8
  %83 = getelementptr inbounds %struct.bundle, %struct.bundle* %82, i32 0, i32 1
  %84 = load %struct.TYPE_20__*, %struct.TYPE_20__** %83, align 8
  %85 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %84, i32 0, i32 0
  store i64 %81, i64* %85, align 8
  br label %92

86:                                               ; preds = %67
  br label %87

87:                                               ; preds = %86, %31
  br label %88

88:                                               ; preds = %87
  %89 = load %struct.datalink*, %struct.datalink** %3, align 8
  %90 = getelementptr inbounds %struct.datalink, %struct.datalink* %89, i32 0, i32 4
  %91 = load %struct.datalink*, %struct.datalink** %90, align 8
  store %struct.datalink* %91, %struct.datalink** %3, align 8
  br label %16

92:                                               ; preds = %74, %16
  %93 = load %struct.bundle*, %struct.bundle** %2, align 8
  %94 = getelementptr inbounds %struct.bundle, %struct.bundle* %93, i32 0, i32 0
  %95 = load i32, i32* %94, align 8
  %96 = icmp eq i32 %95, 0
  br i1 %96, label %97, label %100

97:                                               ; preds = %92
  %98 = load %struct.bundle*, %struct.bundle** %2, align 8
  %99 = getelementptr inbounds %struct.bundle, %struct.bundle* %98, i32 0, i32 0
  store i32 115200, i32* %99, align 8
  br label %100

100:                                              ; preds = %97, %92
  %101 = load %struct.bundle*, %struct.bundle** %2, align 8
  %102 = getelementptr inbounds %struct.bundle, %struct.bundle* %101, i32 0, i32 3
  %103 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %102, i32 0, i32 0
  %104 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %103, i32 0, i32 2
  %105 = load i64, i64* %104, align 8
  %106 = icmp ne i64 %105, 0
  br i1 %106, label %107, label %129

107:                                              ; preds = %100
  %108 = load %struct.bundle*, %struct.bundle** %2, align 8
  %109 = getelementptr inbounds %struct.bundle, %struct.bundle* %108, i32 0, i32 3
  %110 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %109, i32 0, i32 0
  %111 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %110, i32 0, i32 0
  %112 = load i64, i64* %111, align 8
  %113 = load %struct.bundle*, %struct.bundle** %2, align 8
  %114 = getelementptr inbounds %struct.bundle, %struct.bundle* %113, i32 0, i32 1
  %115 = load %struct.TYPE_20__*, %struct.TYPE_20__** %114, align 8
  %116 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %115, i32 0, i32 0
  store i64 %112, i64* %116, align 8
  %117 = load %struct.bundle*, %struct.bundle** %2, align 8
  %118 = getelementptr inbounds %struct.bundle, %struct.bundle* %117, i32 0, i32 3
  %119 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %118, i32 0, i32 0
  %120 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %119, i32 0, i32 1
  %121 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %120, i32 0, i32 0
  %122 = call i32 @ccp_MTUOverhead(i32* %121)
  store i32 %122, i32* %5, align 4
  %123 = load i32, i32* %6, align 4
  %124 = load i32, i32* %5, align 4
  %125 = icmp slt i32 %123, %124
  br i1 %125, label %126, label %128

126:                                              ; preds = %107
  %127 = load i32, i32* %5, align 4
  store i32 %127, i32* %6, align 4
  br label %128

128:                                              ; preds = %126, %107
  br label %143

129:                                              ; preds = %100
  %130 = load %struct.bundle*, %struct.bundle** %2, align 8
  %131 = getelementptr inbounds %struct.bundle, %struct.bundle* %130, i32 0, i32 1
  %132 = load %struct.TYPE_20__*, %struct.TYPE_20__** %131, align 8
  %133 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %132, i32 0, i32 0
  %134 = load i64, i64* %133, align 8
  %135 = icmp ne i64 %134, 0
  br i1 %135, label %142, label %136

136:                                              ; preds = %129
  %137 = load i64, i64* @DEF_MRU, align 8
  %138 = load %struct.bundle*, %struct.bundle** %2, align 8
  %139 = getelementptr inbounds %struct.bundle, %struct.bundle* %138, i32 0, i32 1
  %140 = load %struct.TYPE_20__*, %struct.TYPE_20__** %139, align 8
  %141 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %140, i32 0, i32 0
  store i64 %137, i64* %141, align 8
  br label %142

142:                                              ; preds = %136, %129
  br label %143

143:                                              ; preds = %142, %128
  %144 = load %struct.bundle*, %struct.bundle** %2, align 8
  %145 = getelementptr inbounds %struct.bundle, %struct.bundle* %144, i32 0, i32 2
  %146 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %145, i32 0, i32 1
  %147 = load i64, i64* %146, align 8
  %148 = icmp ne i64 %147, 0
  br i1 %148, label %149, label %181

149:                                              ; preds = %143
  %150 = load %struct.bundle*, %struct.bundle** %2, align 8
  %151 = getelementptr inbounds %struct.bundle, %struct.bundle* %150, i32 0, i32 2
  %152 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %151, i32 0, i32 0
  %153 = load i64, i64* %152, align 8
  %154 = icmp ne i64 %153, 0
  br i1 %154, label %155, label %181

155:                                              ; preds = %149
  %156 = load %struct.bundle*, %struct.bundle** %2, align 8
  %157 = getelementptr inbounds %struct.bundle, %struct.bundle* %156, i32 0, i32 2
  %158 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %157, i32 0, i32 0
  %159 = load i64, i64* %158, align 8
  %160 = load %struct.bundle*, %struct.bundle** %2, align 8
  %161 = getelementptr inbounds %struct.bundle, %struct.bundle* %160, i32 0, i32 1
  %162 = load %struct.TYPE_20__*, %struct.TYPE_20__** %161, align 8
  %163 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %162, i32 0, i32 0
  %164 = load i64, i64* %163, align 8
  %165 = icmp slt i64 %159, %164
  br i1 %165, label %166, label %181

166:                                              ; preds = %155
  %167 = load i32, i32* @LogLCP, align 4
  %168 = load %struct.bundle*, %struct.bundle** %2, align 8
  %169 = getelementptr inbounds %struct.bundle, %struct.bundle* %168, i32 0, i32 2
  %170 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %169, i32 0, i32 0
  %171 = load i64, i64* %170, align 8
  %172 = call i32 (i32, i8*, i64, ...) @log_Printf(i32 %167, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.1, i64 0, i64 0), i64 %171)
  %173 = load %struct.bundle*, %struct.bundle** %2, align 8
  %174 = getelementptr inbounds %struct.bundle, %struct.bundle* %173, i32 0, i32 2
  %175 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %174, i32 0, i32 0
  %176 = load i64, i64* %175, align 8
  %177 = load %struct.bundle*, %struct.bundle** %2, align 8
  %178 = getelementptr inbounds %struct.bundle, %struct.bundle* %177, i32 0, i32 1
  %179 = load %struct.TYPE_20__*, %struct.TYPE_20__** %178, align 8
  %180 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %179, i32 0, i32 0
  store i64 %176, i64* %180, align 8
  br label %181

181:                                              ; preds = %166, %155, %149, %143
  %182 = load i32, i32* %6, align 4
  %183 = icmp ne i32 %182, 0
  br i1 %183, label %184, label %208

184:                                              ; preds = %181
  %185 = load i32, i32* @LogLCP, align 4
  %186 = load %struct.bundle*, %struct.bundle** %2, align 8
  %187 = getelementptr inbounds %struct.bundle, %struct.bundle* %186, i32 0, i32 1
  %188 = load %struct.TYPE_20__*, %struct.TYPE_20__** %187, align 8
  %189 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %188, i32 0, i32 0
  %190 = load i64, i64* %189, align 8
  %191 = load %struct.bundle*, %struct.bundle** %2, align 8
  %192 = getelementptr inbounds %struct.bundle, %struct.bundle* %191, i32 0, i32 1
  %193 = load %struct.TYPE_20__*, %struct.TYPE_20__** %192, align 8
  %194 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %193, i32 0, i32 0
  %195 = load i64, i64* %194, align 8
  %196 = load i32, i32* %6, align 4
  %197 = sext i32 %196 to i64
  %198 = sub nsw i64 %195, %197
  %199 = call i32 (i32, i8*, i64, ...) @log_Printf(i32 %185, i8* getelementptr inbounds ([48 x i8], [48 x i8]* @.str.2, i64 0, i64 0), i64 %190, i64 %198)
  %200 = load i32, i32* %6, align 4
  %201 = sext i32 %200 to i64
  %202 = load %struct.bundle*, %struct.bundle** %2, align 8
  %203 = getelementptr inbounds %struct.bundle, %struct.bundle* %202, i32 0, i32 1
  %204 = load %struct.TYPE_20__*, %struct.TYPE_20__** %203, align 8
  %205 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %204, i32 0, i32 0
  %206 = load i64, i64* %205, align 8
  %207 = sub nsw i64 %206, %201
  store i64 %207, i64* %205, align 8
  br label %208

208:                                              ; preds = %184, %181
  %209 = load %struct.bundle*, %struct.bundle** %2, align 8
  %210 = call i32 @tun_configure(%struct.bundle* %209)
  %211 = load %struct.bundle*, %struct.bundle** %2, align 8
  %212 = call i32 @route_UpdateMTU(%struct.bundle* %211)
  ret void
}

declare dso_local i32 @ccp_MTUOverhead(i32*) #1

declare dso_local i32 @physical_GetSpeed(%struct.TYPE_11__*) #1

declare dso_local i32 @log_Printf(i32, i8*, i64, ...) #1

declare dso_local i32 @tun_configure(%struct.bundle*) #1

declare dso_local i32 @route_UpdateMTU(%struct.bundle*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
