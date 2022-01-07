; ModuleID = '/home/carl/AnghaBench/freebsd/sys/kern/extr_subr_unit.c_collapse_unr.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/kern/extr_subr_unit.c_collapse_unr.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.unrhdr = type { i32, i64, i32, %struct.unrhdr*, i32 }
%struct.unr = type { i32, i64, i32, %struct.unr*, i32 }
%struct.unrb = type { i32, i64, i32, %struct.unrb*, i32 }

@unrhd = common dso_local global i32 0, align 4
@list = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.unrhdr*, %struct.unr*)* @collapse_unr to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @collapse_unr(%struct.unrhdr* %0, %struct.unr* %1) #0 {
  %3 = alloca %struct.unrhdr*, align 8
  %4 = alloca %struct.unr*, align 8
  %5 = alloca %struct.unr*, align 8
  %6 = alloca %struct.unrb*, align 8
  store %struct.unrhdr* %0, %struct.unrhdr** %3, align 8
  store %struct.unr* %1, %struct.unr** %4, align 8
  %7 = load %struct.unrhdr*, %struct.unrhdr** %3, align 8
  %8 = load %struct.unr*, %struct.unr** %4, align 8
  %9 = bitcast %struct.unr* %8 to %struct.unrhdr*
  %10 = call i64 @is_bitmap(%struct.unrhdr* %7, %struct.unrhdr* %9)
  %11 = icmp ne i64 %10, 0
  br i1 %11, label %12, label %54

12:                                               ; preds = %2
  %13 = load %struct.unr*, %struct.unr** %4, align 8
  %14 = getelementptr inbounds %struct.unr, %struct.unr* %13, i32 0, i32 3
  %15 = load %struct.unr*, %struct.unr** %14, align 8
  %16 = bitcast %struct.unr* %15 to %struct.unrb*
  store %struct.unrb* %16, %struct.unrb** %6, align 8
  %17 = load %struct.unrb*, %struct.unrb** %6, align 8
  %18 = bitcast %struct.unrb* %17 to %struct.unrhdr*
  %19 = load %struct.unr*, %struct.unr** %4, align 8
  %20 = getelementptr inbounds %struct.unr, %struct.unr* %19, i32 0, i32 1
  %21 = load i64, i64* %20, align 8
  %22 = call i64 @ub_full(%struct.unrhdr* %18, i64 %21)
  %23 = icmp ne i64 %22, 0
  br i1 %23, label %24, label %35

24:                                               ; preds = %12
  %25 = load %struct.unrhdr*, %struct.unrhdr** %3, align 8
  %26 = load %struct.unr*, %struct.unr** %4, align 8
  %27 = getelementptr inbounds %struct.unr, %struct.unr* %26, i32 0, i32 3
  %28 = load %struct.unr*, %struct.unr** %27, align 8
  %29 = bitcast %struct.unr* %28 to %struct.unrhdr*
  %30 = call i32 @delete_unr(%struct.unrhdr* %25, %struct.unrhdr* %29)
  %31 = load %struct.unrhdr*, %struct.unrhdr** %3, align 8
  %32 = bitcast %struct.unrhdr* %31 to %struct.unr*
  %33 = load %struct.unr*, %struct.unr** %4, align 8
  %34 = getelementptr inbounds %struct.unr, %struct.unr* %33, i32 0, i32 3
  store %struct.unr* %32, %struct.unr** %34, align 8
  br label %53

35:                                               ; preds = %12
  %36 = load %struct.unrb*, %struct.unrb** %6, align 8
  %37 = bitcast %struct.unrb* %36 to %struct.unrhdr*
  %38 = load %struct.unr*, %struct.unr** %4, align 8
  %39 = getelementptr inbounds %struct.unr, %struct.unr* %38, i32 0, i32 1
  %40 = load i64, i64* %39, align 8
  %41 = call i64 @ub_empty(%struct.unrhdr* %37, i64 %40)
  %42 = icmp ne i64 %41, 0
  br i1 %42, label %43, label %52

43:                                               ; preds = %35
  %44 = load %struct.unrhdr*, %struct.unrhdr** %3, align 8
  %45 = load %struct.unr*, %struct.unr** %4, align 8
  %46 = getelementptr inbounds %struct.unr, %struct.unr* %45, i32 0, i32 3
  %47 = load %struct.unr*, %struct.unr** %46, align 8
  %48 = bitcast %struct.unr* %47 to %struct.unrhdr*
  %49 = call i32 @delete_unr(%struct.unrhdr* %44, %struct.unrhdr* %48)
  %50 = load %struct.unr*, %struct.unr** %4, align 8
  %51 = getelementptr inbounds %struct.unr, %struct.unr* %50, i32 0, i32 3
  store %struct.unr* null, %struct.unr** %51, align 8
  br label %52

52:                                               ; preds = %43, %35
  br label %53

53:                                               ; preds = %52, %24
  br label %54

54:                                               ; preds = %53, %2
  %55 = load %struct.unr*, %struct.unr** %4, align 8
  %56 = getelementptr inbounds %struct.unr, %struct.unr* %55, i32 0, i32 1
  %57 = load i64, i64* %56, align 8
  %58 = icmp eq i64 %57, 0
  br i1 %58, label %59, label %86

59:                                               ; preds = %54
  %60 = load %struct.unr*, %struct.unr** %4, align 8
  %61 = bitcast %struct.unr* %60 to %struct.unrhdr*
  %62 = load i32, i32* @unrhd, align 4
  %63 = load i32, i32* @list, align 4
  %64 = call %struct.unrhdr* @TAILQ_PREV(%struct.unrhdr* %61, i32 %62, i32 %63)
  %65 = bitcast %struct.unrhdr* %64 to %struct.unr*
  store %struct.unr* %65, %struct.unr** %5, align 8
  %66 = load %struct.unr*, %struct.unr** %5, align 8
  %67 = icmp eq %struct.unr* %66, null
  br i1 %67, label %68, label %74

68:                                               ; preds = %59
  %69 = load %struct.unr*, %struct.unr** %4, align 8
  %70 = bitcast %struct.unr* %69 to %struct.unrhdr*
  %71 = load i32, i32* @list, align 4
  %72 = call %struct.unrhdr* @TAILQ_NEXT(%struct.unrhdr* %70, i32 %71)
  %73 = bitcast %struct.unrhdr* %72 to %struct.unr*
  store %struct.unr* %73, %struct.unr** %5, align 8
  br label %74

74:                                               ; preds = %68, %59
  %75 = load %struct.unrhdr*, %struct.unrhdr** %3, align 8
  %76 = getelementptr inbounds %struct.unrhdr, %struct.unrhdr* %75, i32 0, i32 0
  %77 = load %struct.unr*, %struct.unr** %4, align 8
  %78 = bitcast %struct.unr* %77 to %struct.unrhdr*
  %79 = load i32, i32* @list, align 4
  %80 = call i32 @TAILQ_REMOVE(i32* %76, %struct.unrhdr* %78, i32 %79)
  %81 = load %struct.unrhdr*, %struct.unrhdr** %3, align 8
  %82 = load %struct.unr*, %struct.unr** %4, align 8
  %83 = bitcast %struct.unr* %82 to %struct.unrhdr*
  %84 = call i32 @delete_unr(%struct.unrhdr* %81, %struct.unrhdr* %83)
  %85 = load %struct.unr*, %struct.unr** %5, align 8
  store %struct.unr* %85, %struct.unr** %4, align 8
  br label %86

86:                                               ; preds = %74, %54
  %87 = load %struct.unr*, %struct.unr** %4, align 8
  %88 = icmp ne %struct.unr* %87, null
  br i1 %88, label %89, label %159

89:                                               ; preds = %86
  %90 = load %struct.unr*, %struct.unr** %4, align 8
  %91 = bitcast %struct.unr* %90 to %struct.unrhdr*
  %92 = load i32, i32* @unrhd, align 4
  %93 = load i32, i32* @list, align 4
  %94 = call %struct.unrhdr* @TAILQ_PREV(%struct.unrhdr* %91, i32 %92, i32 %93)
  %95 = bitcast %struct.unrhdr* %94 to %struct.unr*
  store %struct.unr* %95, %struct.unr** %5, align 8
  %96 = load %struct.unr*, %struct.unr** %5, align 8
  %97 = icmp ne %struct.unr* %96, null
  br i1 %97, label %98, label %124

98:                                               ; preds = %89
  %99 = load %struct.unr*, %struct.unr** %4, align 8
  %100 = getelementptr inbounds %struct.unr, %struct.unr* %99, i32 0, i32 3
  %101 = load %struct.unr*, %struct.unr** %100, align 8
  %102 = load %struct.unr*, %struct.unr** %5, align 8
  %103 = getelementptr inbounds %struct.unr, %struct.unr* %102, i32 0, i32 3
  %104 = load %struct.unr*, %struct.unr** %103, align 8
  %105 = icmp eq %struct.unr* %101, %104
  br i1 %105, label %106, label %124

106:                                              ; preds = %98
  %107 = load %struct.unr*, %struct.unr** %5, align 8
  %108 = getelementptr inbounds %struct.unr, %struct.unr* %107, i32 0, i32 1
  %109 = load i64, i64* %108, align 8
  %110 = load %struct.unr*, %struct.unr** %4, align 8
  %111 = getelementptr inbounds %struct.unr, %struct.unr* %110, i32 0, i32 1
  %112 = load i64, i64* %111, align 8
  %113 = add nsw i64 %112, %109
  store i64 %113, i64* %111, align 8
  %114 = load %struct.unrhdr*, %struct.unrhdr** %3, align 8
  %115 = getelementptr inbounds %struct.unrhdr, %struct.unrhdr* %114, i32 0, i32 0
  %116 = load %struct.unr*, %struct.unr** %5, align 8
  %117 = bitcast %struct.unr* %116 to %struct.unrhdr*
  %118 = load i32, i32* @list, align 4
  %119 = call i32 @TAILQ_REMOVE(i32* %115, %struct.unrhdr* %117, i32 %118)
  %120 = load %struct.unrhdr*, %struct.unrhdr** %3, align 8
  %121 = load %struct.unr*, %struct.unr** %5, align 8
  %122 = bitcast %struct.unr* %121 to %struct.unrhdr*
  %123 = call i32 @delete_unr(%struct.unrhdr* %120, %struct.unrhdr* %122)
  br label %124

124:                                              ; preds = %106, %98, %89
  %125 = load %struct.unr*, %struct.unr** %4, align 8
  %126 = bitcast %struct.unr* %125 to %struct.unrhdr*
  %127 = load i32, i32* @list, align 4
  %128 = call %struct.unrhdr* @TAILQ_NEXT(%struct.unrhdr* %126, i32 %127)
  %129 = bitcast %struct.unrhdr* %128 to %struct.unr*
  store %struct.unr* %129, %struct.unr** %5, align 8
  %130 = load %struct.unr*, %struct.unr** %5, align 8
  %131 = icmp ne %struct.unr* %130, null
  br i1 %131, label %132, label %158

132:                                              ; preds = %124
  %133 = load %struct.unr*, %struct.unr** %4, align 8
  %134 = getelementptr inbounds %struct.unr, %struct.unr* %133, i32 0, i32 3
  %135 = load %struct.unr*, %struct.unr** %134, align 8
  %136 = load %struct.unr*, %struct.unr** %5, align 8
  %137 = getelementptr inbounds %struct.unr, %struct.unr* %136, i32 0, i32 3
  %138 = load %struct.unr*, %struct.unr** %137, align 8
  %139 = icmp eq %struct.unr* %135, %138
  br i1 %139, label %140, label %158

140:                                              ; preds = %132
  %141 = load %struct.unr*, %struct.unr** %5, align 8
  %142 = getelementptr inbounds %struct.unr, %struct.unr* %141, i32 0, i32 1
  %143 = load i64, i64* %142, align 8
  %144 = load %struct.unr*, %struct.unr** %4, align 8
  %145 = getelementptr inbounds %struct.unr, %struct.unr* %144, i32 0, i32 1
  %146 = load i64, i64* %145, align 8
  %147 = add nsw i64 %146, %143
  store i64 %147, i64* %145, align 8
  %148 = load %struct.unrhdr*, %struct.unrhdr** %3, align 8
  %149 = getelementptr inbounds %struct.unrhdr, %struct.unrhdr* %148, i32 0, i32 0
  %150 = load %struct.unr*, %struct.unr** %5, align 8
  %151 = bitcast %struct.unr* %150 to %struct.unrhdr*
  %152 = load i32, i32* @list, align 4
  %153 = call i32 @TAILQ_REMOVE(i32* %149, %struct.unrhdr* %151, i32 %152)
  %154 = load %struct.unrhdr*, %struct.unrhdr** %3, align 8
  %155 = load %struct.unr*, %struct.unr** %5, align 8
  %156 = bitcast %struct.unr* %155 to %struct.unrhdr*
  %157 = call i32 @delete_unr(%struct.unrhdr* %154, %struct.unrhdr* %156)
  br label %158

158:                                              ; preds = %140, %132, %124
  br label %159

159:                                              ; preds = %158, %86
  %160 = load %struct.unrhdr*, %struct.unrhdr** %3, align 8
  %161 = getelementptr inbounds %struct.unrhdr, %struct.unrhdr* %160, i32 0, i32 0
  %162 = call %struct.unrhdr* @TAILQ_FIRST(i32* %161)
  %163 = bitcast %struct.unrhdr* %162 to %struct.unr*
  store %struct.unr* %163, %struct.unr** %5, align 8
  %164 = load %struct.unr*, %struct.unr** %5, align 8
  %165 = icmp ne %struct.unr* %164, null
  br i1 %165, label %166, label %198

166:                                              ; preds = %159
  %167 = load %struct.unr*, %struct.unr** %5, align 8
  %168 = getelementptr inbounds %struct.unr, %struct.unr* %167, i32 0, i32 3
  %169 = load %struct.unr*, %struct.unr** %168, align 8
  %170 = load %struct.unrhdr*, %struct.unrhdr** %3, align 8
  %171 = bitcast %struct.unrhdr* %170 to %struct.unr*
  %172 = icmp eq %struct.unr* %169, %171
  br i1 %172, label %173, label %198

173:                                              ; preds = %166
  %174 = load %struct.unr*, %struct.unr** %5, align 8
  %175 = getelementptr inbounds %struct.unr, %struct.unr* %174, i32 0, i32 1
  %176 = load i64, i64* %175, align 8
  %177 = load %struct.unrhdr*, %struct.unrhdr** %3, align 8
  %178 = getelementptr inbounds %struct.unrhdr, %struct.unrhdr* %177, i32 0, i32 4
  %179 = load i32, i32* %178, align 8
  %180 = sext i32 %179 to i64
  %181 = add nsw i64 %180, %176
  %182 = trunc i64 %181 to i32
  store i32 %182, i32* %178, align 8
  %183 = load %struct.unrhdr*, %struct.unrhdr** %3, align 8
  %184 = getelementptr inbounds %struct.unrhdr, %struct.unrhdr* %183, i32 0, i32 0
  %185 = load %struct.unr*, %struct.unr** %5, align 8
  %186 = bitcast %struct.unr* %185 to %struct.unrhdr*
  %187 = load i32, i32* @list, align 4
  %188 = call i32 @TAILQ_REMOVE(i32* %184, %struct.unrhdr* %186, i32 %187)
  %189 = load %struct.unrhdr*, %struct.unrhdr** %3, align 8
  %190 = load %struct.unr*, %struct.unr** %5, align 8
  %191 = bitcast %struct.unr* %190 to %struct.unrhdr*
  %192 = call i32 @delete_unr(%struct.unrhdr* %189, %struct.unrhdr* %191)
  %193 = load %struct.unr*, %struct.unr** %4, align 8
  %194 = load %struct.unr*, %struct.unr** %5, align 8
  %195 = icmp eq %struct.unr* %193, %194
  br i1 %195, label %196, label %197

196:                                              ; preds = %173
  store %struct.unr* null, %struct.unr** %4, align 8
  br label %197

197:                                              ; preds = %196, %173
  br label %198

198:                                              ; preds = %197, %166, %159
  %199 = load %struct.unrhdr*, %struct.unrhdr** %3, align 8
  %200 = getelementptr inbounds %struct.unrhdr, %struct.unrhdr* %199, i32 0, i32 0
  %201 = load i32, i32* @unrhd, align 4
  %202 = call %struct.unrhdr* @TAILQ_LAST(i32* %200, i32 %201)
  %203 = bitcast %struct.unrhdr* %202 to %struct.unr*
  store %struct.unr* %203, %struct.unr** %5, align 8
  %204 = load %struct.unr*, %struct.unr** %5, align 8
  %205 = icmp ne %struct.unr* %204, null
  br i1 %205, label %206, label %236

206:                                              ; preds = %198
  %207 = load %struct.unr*, %struct.unr** %5, align 8
  %208 = getelementptr inbounds %struct.unr, %struct.unr* %207, i32 0, i32 3
  %209 = load %struct.unr*, %struct.unr** %208, align 8
  %210 = icmp eq %struct.unr* %209, null
  br i1 %210, label %211, label %236

211:                                              ; preds = %206
  %212 = load %struct.unr*, %struct.unr** %5, align 8
  %213 = getelementptr inbounds %struct.unr, %struct.unr* %212, i32 0, i32 1
  %214 = load i64, i64* %213, align 8
  %215 = load %struct.unrhdr*, %struct.unrhdr** %3, align 8
  %216 = getelementptr inbounds %struct.unrhdr, %struct.unrhdr* %215, i32 0, i32 2
  %217 = load i32, i32* %216, align 8
  %218 = sext i32 %217 to i64
  %219 = add nsw i64 %218, %214
  %220 = trunc i64 %219 to i32
  store i32 %220, i32* %216, align 8
  %221 = load %struct.unrhdr*, %struct.unrhdr** %3, align 8
  %222 = getelementptr inbounds %struct.unrhdr, %struct.unrhdr* %221, i32 0, i32 0
  %223 = load %struct.unr*, %struct.unr** %5, align 8
  %224 = bitcast %struct.unr* %223 to %struct.unrhdr*
  %225 = load i32, i32* @list, align 4
  %226 = call i32 @TAILQ_REMOVE(i32* %222, %struct.unrhdr* %224, i32 %225)
  %227 = load %struct.unrhdr*, %struct.unrhdr** %3, align 8
  %228 = load %struct.unr*, %struct.unr** %5, align 8
  %229 = bitcast %struct.unr* %228 to %struct.unrhdr*
  %230 = call i32 @delete_unr(%struct.unrhdr* %227, %struct.unrhdr* %229)
  %231 = load %struct.unr*, %struct.unr** %4, align 8
  %232 = load %struct.unr*, %struct.unr** %5, align 8
  %233 = icmp eq %struct.unr* %231, %232
  br i1 %233, label %234, label %235

234:                                              ; preds = %211
  store %struct.unr* null, %struct.unr** %4, align 8
  br label %235

235:                                              ; preds = %234, %211
  br label %236

236:                                              ; preds = %235, %206, %198
  br label %237

237:                                              ; preds = %241, %236
  %238 = load %struct.unrhdr*, %struct.unrhdr** %3, align 8
  %239 = call i64 @optimize_unr(%struct.unrhdr* %238)
  %240 = icmp ne i64 %239, 0
  br i1 %240, label %241, label %242

241:                                              ; preds = %237
  br label %237

242:                                              ; preds = %237
  ret void
}

declare dso_local i64 @is_bitmap(%struct.unrhdr*, %struct.unrhdr*) #1

declare dso_local i64 @ub_full(%struct.unrhdr*, i64) #1

declare dso_local i32 @delete_unr(%struct.unrhdr*, %struct.unrhdr*) #1

declare dso_local i64 @ub_empty(%struct.unrhdr*, i64) #1

declare dso_local %struct.unrhdr* @TAILQ_PREV(%struct.unrhdr*, i32, i32) #1

declare dso_local %struct.unrhdr* @TAILQ_NEXT(%struct.unrhdr*, i32) #1

declare dso_local i32 @TAILQ_REMOVE(i32*, %struct.unrhdr*, i32) #1

declare dso_local %struct.unrhdr* @TAILQ_FIRST(i32*) #1

declare dso_local %struct.unrhdr* @TAILQ_LAST(i32*, i32) #1

declare dso_local i64 @optimize_unr(%struct.unrhdr*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
