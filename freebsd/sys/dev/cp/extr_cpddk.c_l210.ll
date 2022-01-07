; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/cp/extr_cpddk.c_l210.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/cp/extr_cpddk.c_l210.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_10__ = type { i32, i32, i32, i32, i64, i32, i32, i32, i32, i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.TYPE_10__*)* @l210 to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @l210(%struct.TYPE_10__* %0) #0 {
  %2 = alloca %struct.TYPE_10__*, align 8
  %3 = alloca i32, align 4
  store %struct.TYPE_10__* %0, %struct.TYPE_10__** %2, align 8
  %4 = load %struct.TYPE_10__*, %struct.TYPE_10__** %2, align 8
  %5 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %4, i32 0, i32 0
  %6 = load i32, i32* %5, align 8
  %7 = and i32 %6, -129
  store i32 %7, i32* %5, align 8
  %8 = load %struct.TYPE_10__*, %struct.TYPE_10__** %2, align 8
  %9 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %8, i32 0, i32 2
  %10 = load i32, i32* %9, align 8
  %11 = load %struct.TYPE_10__*, %struct.TYPE_10__** %2, align 8
  %12 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %11, i32 0, i32 1
  %13 = load i32, i32* %12, align 4
  %14 = load %struct.TYPE_10__*, %struct.TYPE_10__** %2, align 8
  %15 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 8
  %17 = call i32 @l(i32 %10, i32 %13, i32 %16)
  %18 = load %struct.TYPE_10__*, %struct.TYPE_10__** %2, align 8
  %19 = load %struct.TYPE_10__*, %struct.TYPE_10__** %2, align 8
  %20 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %19, i32 0, i32 9
  %21 = load i32, i32* %20, align 8
  %22 = call i32 @cp_set_gsyn(%struct.TYPE_10__* %18, i32 %21)
  %23 = load %struct.TYPE_10__*, %struct.TYPE_10__** %2, align 8
  %24 = load %struct.TYPE_10__*, %struct.TYPE_10__** %2, align 8
  %25 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %24, i32 0, i32 8
  %26 = load i32, i32* %25, align 4
  %27 = call i32 @cp_set_unfram(%struct.TYPE_10__* %23, i32 %26)
  %28 = load %struct.TYPE_10__*, %struct.TYPE_10__** %2, align 8
  %29 = load %struct.TYPE_10__*, %struct.TYPE_10__** %2, align 8
  %30 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %29, i32 0, i32 7
  %31 = load i32, i32* %30, align 8
  %32 = call i32 @cp_set_phony(%struct.TYPE_10__* %28, i32 %31)
  %33 = load %struct.TYPE_10__*, %struct.TYPE_10__** %2, align 8
  %34 = load %struct.TYPE_10__*, %struct.TYPE_10__** %2, align 8
  %35 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %34, i32 0, i32 6
  %36 = load i32, i32* %35, align 4
  %37 = call i32 @cp_set_lloop(%struct.TYPE_10__* %33, i32 %36)
  %38 = load %struct.TYPE_10__*, %struct.TYPE_10__** %2, align 8
  %39 = load %struct.TYPE_10__*, %struct.TYPE_10__** %2, align 8
  %40 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %39, i32 0, i32 5
  %41 = load i32, i32* %40, align 8
  %42 = call i32 @cp_set_monitor(%struct.TYPE_10__* %38, i32 %41)
  %43 = load %struct.TYPE_10__*, %struct.TYPE_10__** %2, align 8
  %44 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %43, i32 0, i32 4
  store i64 0, i64* %44, align 8
  %45 = load %struct.TYPE_10__*, %struct.TYPE_10__** %2, align 8
  %46 = call i32 @i(%struct.TYPE_10__* %45, i32 22, i32 0)
  %47 = load %struct.TYPE_10__*, %struct.TYPE_10__** %2, align 8
  %48 = call i32 @i(%struct.TYPE_10__* %47, i32 23, i32 0)
  %49 = load %struct.TYPE_10__*, %struct.TYPE_10__** %2, align 8
  %50 = call i32 @i(%struct.TYPE_10__* %49, i32 21, i32 0)
  %51 = load %struct.TYPE_10__*, %struct.TYPE_10__** %2, align 8
  %52 = call i32 @i(%struct.TYPE_10__* %51, i32 25, i32 0)
  %53 = load %struct.TYPE_10__*, %struct.TYPE_10__** %2, align 8
  %54 = call i32 @i(%struct.TYPE_10__* %53, i32 32, i32 155)
  %55 = load %struct.TYPE_10__*, %struct.TYPE_10__** %2, align 8
  %56 = call i32 @i(%struct.TYPE_10__* %55, i32 33, i32 223)
  %57 = load %struct.TYPE_10__*, %struct.TYPE_10__** %2, align 8
  %58 = call i32 @i(%struct.TYPE_10__* %57, i32 42, i32 255)
  %59 = load %struct.TYPE_10__*, %struct.TYPE_10__** %2, align 8
  %60 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %59, i32 0, i32 3
  %61 = load i32, i32* %60, align 4
  %62 = icmp ne i32 %61, 0
  br i1 %62, label %64, label %63

63:                                               ; preds = %1
  br label %159

64:                                               ; preds = %1
  %65 = load %struct.TYPE_10__*, %struct.TYPE_10__** %2, align 8
  %66 = call i32 @i(%struct.TYPE_10__* %65, i32 170, i32 0)
  %67 = load %struct.TYPE_10__*, %struct.TYPE_10__** %2, align 8
  %68 = call i32 @i(%struct.TYPE_10__* %67, i32 29, i32 0)
  %69 = load %struct.TYPE_10__*, %struct.TYPE_10__** %2, align 8
  %70 = call i32 @i(%struct.TYPE_10__* %69, i32 172, i32 0)
  %71 = load %struct.TYPE_10__*, %struct.TYPE_10__** %2, align 8
  %72 = call i32 @i(%struct.TYPE_10__* %71, i32 160, i32 0)
  %73 = load %struct.TYPE_10__*, %struct.TYPE_10__** %2, align 8
  %74 = call i32 @i(%struct.TYPE_10__* %73, i32 161, i32 0)
  %75 = load %struct.TYPE_10__*, %struct.TYPE_10__** %2, align 8
  %76 = call i32 @i(%struct.TYPE_10__* %75, i32 162, i32 0)
  %77 = load %struct.TYPE_10__*, %struct.TYPE_10__** %2, align 8
  %78 = call i32 @i(%struct.TYPE_10__* %77, i32 163, i32 0)
  %79 = load %struct.TYPE_10__*, %struct.TYPE_10__** %2, align 8
  %80 = call i32 @i(%struct.TYPE_10__* %79, i32 164, i32 0)
  %81 = load %struct.TYPE_10__*, %struct.TYPE_10__** %2, align 8
  %82 = call i32 @i(%struct.TYPE_10__* %81, i32 165, i32 0)
  %83 = load %struct.TYPE_10__*, %struct.TYPE_10__** %2, align 8
  %84 = call i32 @i(%struct.TYPE_10__* %83, i32 166, i32 0)
  %85 = load %struct.TYPE_10__*, %struct.TYPE_10__** %2, align 8
  %86 = call i32 @i(%struct.TYPE_10__* %85, i32 167, i32 0)
  %87 = load %struct.TYPE_10__*, %struct.TYPE_10__** %2, align 8
  %88 = call i32 @i(%struct.TYPE_10__* %87, i32 28, i32 0)
  %89 = load %struct.TYPE_10__*, %struct.TYPE_10__** %2, align 8
  %90 = call i32 @i(%struct.TYPE_10__* %89, i32 80, i32 0)
  %91 = load %struct.TYPE_10__*, %struct.TYPE_10__** %2, align 8
  %92 = call i32 @i(%struct.TYPE_10__* %91, i32 81, i32 0)
  %93 = load %struct.TYPE_10__*, %struct.TYPE_10__** %2, align 8
  %94 = call i32 @i(%struct.TYPE_10__* %93, i32 82, i32 0)
  %95 = load %struct.TYPE_10__*, %struct.TYPE_10__** %2, align 8
  %96 = call i32 @i(%struct.TYPE_10__* %95, i32 83, i32 0)
  %97 = load %struct.TYPE_10__*, %struct.TYPE_10__** %2, align 8
  %98 = call i32 @i(%struct.TYPE_10__* %97, i32 84, i32 0)
  %99 = load %struct.TYPE_10__*, %struct.TYPE_10__** %2, align 8
  %100 = call i32 @i(%struct.TYPE_10__* %99, i32 85, i32 0)
  %101 = load %struct.TYPE_10__*, %struct.TYPE_10__** %2, align 8
  %102 = call i32 @i(%struct.TYPE_10__* %101, i32 86, i32 0)
  %103 = load %struct.TYPE_10__*, %struct.TYPE_10__** %2, align 8
  %104 = call i32 @i(%struct.TYPE_10__* %103, i32 87, i32 0)
  %105 = load %struct.TYPE_10__*, %struct.TYPE_10__** %2, align 8
  %106 = call i32 @i(%struct.TYPE_10__* %105, i32 176, i32 0)
  %107 = load %struct.TYPE_10__*, %struct.TYPE_10__** %2, align 8
  %108 = call i32 @i(%struct.TYPE_10__* %107, i32 177, i32 0)
  %109 = load %struct.TYPE_10__*, %struct.TYPE_10__** %2, align 8
  %110 = call i32 @i(%struct.TYPE_10__* %109, i32 178, i32 0)
  %111 = load %struct.TYPE_10__*, %struct.TYPE_10__** %2, align 8
  %112 = call i32 @i(%struct.TYPE_10__* %111, i32 179, i32 0)
  %113 = load %struct.TYPE_10__*, %struct.TYPE_10__** %2, align 8
  %114 = call i32 @i(%struct.TYPE_10__* %113, i32 180, i32 0)
  %115 = load %struct.TYPE_10__*, %struct.TYPE_10__** %2, align 8
  %116 = call i32 @i(%struct.TYPE_10__* %115, i32 181, i32 0)
  %117 = load %struct.TYPE_10__*, %struct.TYPE_10__** %2, align 8
  %118 = call i32 @i(%struct.TYPE_10__* %117, i32 182, i32 0)
  %119 = load %struct.TYPE_10__*, %struct.TYPE_10__** %2, align 8
  %120 = call i32 @i(%struct.TYPE_10__* %119, i32 183, i32 0)
  %121 = load %struct.TYPE_10__*, %struct.TYPE_10__** %2, align 8
  %122 = call i32 @i(%struct.TYPE_10__* %121, i32 184, i32 0)
  %123 = load %struct.TYPE_10__*, %struct.TYPE_10__** %2, align 8
  %124 = call i32 @i(%struct.TYPE_10__* %123, i32 185, i32 0)
  %125 = load %struct.TYPE_10__*, %struct.TYPE_10__** %2, align 8
  %126 = call i32 @i(%struct.TYPE_10__* %125, i32 186, i32 0)
  %127 = load %struct.TYPE_10__*, %struct.TYPE_10__** %2, align 8
  %128 = call i32 @i(%struct.TYPE_10__* %127, i32 187, i32 0)
  %129 = load %struct.TYPE_10__*, %struct.TYPE_10__** %2, align 8
  %130 = call i32 @i(%struct.TYPE_10__* %129, i32 9, i32 0)
  %131 = load %struct.TYPE_10__*, %struct.TYPE_10__** %2, align 8
  %132 = call i32 @i(%struct.TYPE_10__* %131, i32 10, i32 0)
  %133 = load %struct.TYPE_10__*, %struct.TYPE_10__** %2, align 8
  %134 = call i32 @i(%struct.TYPE_10__* %133, i32 11, i32 0)
  %135 = load %struct.TYPE_10__*, %struct.TYPE_10__** %2, align 8
  %136 = call i32 @i(%struct.TYPE_10__* %135, i32 12, i32 0)
  %137 = load %struct.TYPE_10__*, %struct.TYPE_10__** %2, align 8
  %138 = call i32 @i(%struct.TYPE_10__* %137, i32 13, i32 0)
  %139 = load %struct.TYPE_10__*, %struct.TYPE_10__** %2, align 8
  %140 = call i32 @i(%struct.TYPE_10__* %139, i32 14, i32 0)
  %141 = load %struct.TYPE_10__*, %struct.TYPE_10__** %2, align 8
  %142 = call i32 @i(%struct.TYPE_10__* %141, i32 173, i32 0)
  %143 = load %struct.TYPE_10__*, %struct.TYPE_10__** %2, align 8
  %144 = call i32 @i(%struct.TYPE_10__* %143, i32 174, i32 0)
  %145 = load %struct.TYPE_10__*, %struct.TYPE_10__** %2, align 8
  %146 = call i32 @i(%struct.TYPE_10__* %145, i32 175, i32 0)
  %147 = load %struct.TYPE_10__*, %struct.TYPE_10__** %2, align 8
  %148 = call i32 @i(%struct.TYPE_10__* %147, i32 188, i32 0)
  %149 = load %struct.TYPE_10__*, %struct.TYPE_10__** %2, align 8
  %150 = call i32 @i(%struct.TYPE_10__* %149, i32 189, i32 0)
  %151 = load %struct.TYPE_10__*, %struct.TYPE_10__** %2, align 8
  %152 = call i32 @i(%struct.TYPE_10__* %151, i32 190, i32 0)
  %153 = load %struct.TYPE_10__*, %struct.TYPE_10__** %2, align 8
  %154 = call i32 @i(%struct.TYPE_10__* %153, i32 191, i32 0)
  %155 = load %struct.TYPE_10__*, %struct.TYPE_10__** %2, align 8
  %156 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %155, i32 0, i32 2
  %157 = load i32, i32* %156, align 8
  %158 = call i32 @l(i32 %157, i32 11, i32 255)
  br label %159

159:                                              ; preds = %64, %63
  %160 = load %struct.TYPE_10__*, %struct.TYPE_10__** %2, align 8
  %161 = call i32 @i(%struct.TYPE_10__* %160, i32 64, i32 11)
  store i32 1, i32* %3, align 4
  br label %162

162:                                              ; preds = %167, %159
  %163 = load i32, i32* %3, align 4
  %164 = icmp slt i32 %163, 16
  br i1 %164, label %166, label %165

165:                                              ; preds = %162
  br label %177

166:                                              ; preds = %162
  br label %170

167:                                              ; preds = %170
  %168 = load i32, i32* %3, align 4
  %169 = add nsw i32 %168, 1
  store i32 %169, i32* %3, align 4
  br label %162

170:                                              ; preds = %166
  %171 = load %struct.TYPE_10__*, %struct.TYPE_10__** %2, align 8
  %172 = load i32, i32* %3, align 4
  %173 = add nsw i32 64, %172
  %174 = trunc i32 %173 to i8
  %175 = zext i8 %174 to i32
  %176 = call i32 @i(%struct.TYPE_10__* %171, i32 %175, i32 255)
  br label %167

177:                                              ; preds = %165
  %178 = load %struct.TYPE_10__*, %struct.TYPE_10__** %2, align 8
  %179 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %178, i32 0, i32 3
  %180 = load i32, i32* %179, align 4
  %181 = icmp ne i32 %180, 0
  br i1 %181, label %183, label %182

182:                                              ; preds = %177
  br label %188

183:                                              ; preds = %177
  %184 = load %struct.TYPE_10__*, %struct.TYPE_10__** %2, align 8
  %185 = call i32 @i(%struct.TYPE_10__* %184, i32 170, i32 128)
  %186 = load %struct.TYPE_10__*, %struct.TYPE_10__** %2, align 8
  %187 = call i32 @i(%struct.TYPE_10__* %186, i32 170, i32 0)
  br label %193

188:                                              ; preds = %182
  %189 = load %struct.TYPE_10__*, %struct.TYPE_10__** %2, align 8
  %190 = call i32 @i(%struct.TYPE_10__* %189, i32 27, i32 10)
  %191 = load %struct.TYPE_10__*, %struct.TYPE_10__** %2, align 8
  %192 = call i32 @i(%struct.TYPE_10__* %191, i32 27, i32 2)
  br label %193

193:                                              ; preds = %188, %183
  %194 = load %struct.TYPE_10__*, %struct.TYPE_10__** %2, align 8
  %195 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %194, i32 0, i32 3
  %196 = load i32, i32* %195, align 4
  %197 = icmp ne i32 %196, 0
  br i1 %197, label %199, label %198

198:                                              ; preds = %193
  br label %204

199:                                              ; preds = %193
  %200 = load %struct.TYPE_10__*, %struct.TYPE_10__** %2, align 8
  %201 = call i32 @i(%struct.TYPE_10__* %200, i32 29, i32 3)
  %202 = load %struct.TYPE_10__*, %struct.TYPE_10__** %2, align 8
  %203 = call i32 @i(%struct.TYPE_10__* %202, i32 29, i32 0)
  br label %209

204:                                              ; preds = %198
  %205 = load %struct.TYPE_10__*, %struct.TYPE_10__** %2, align 8
  %206 = call i32 @i(%struct.TYPE_10__* %205, i32 27, i32 18)
  %207 = load %struct.TYPE_10__*, %struct.TYPE_10__** %2, align 8
  %208 = call i32 @i(%struct.TYPE_10__* %207, i32 27, i32 2)
  br label %209

209:                                              ; preds = %204, %199
  %210 = load %struct.TYPE_10__*, %struct.TYPE_10__** %2, align 8
  %211 = call i32 @l90(%struct.TYPE_10__* %210, i32 6, i32 255)
  %212 = load %struct.TYPE_10__*, %struct.TYPE_10__** %2, align 8
  %213 = call i32 @l90(%struct.TYPE_10__* %212, i32 7, i32 255)
  %214 = load %struct.TYPE_10__*, %struct.TYPE_10__** %2, align 8
  %215 = call i32 @l90(%struct.TYPE_10__* %214, i32 8, i32 255)
  %216 = load %struct.TYPE_10__*, %struct.TYPE_10__** %2, align 8
  %217 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %216, i32 0, i32 0
  %218 = load i32, i32* %217, align 8
  %219 = or i32 %218, 128
  store i32 %219, i32* %217, align 8
  %220 = load %struct.TYPE_10__*, %struct.TYPE_10__** %2, align 8
  %221 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %220, i32 0, i32 2
  %222 = load i32, i32* %221, align 8
  %223 = load %struct.TYPE_10__*, %struct.TYPE_10__** %2, align 8
  %224 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %223, i32 0, i32 1
  %225 = load i32, i32* %224, align 4
  %226 = load %struct.TYPE_10__*, %struct.TYPE_10__** %2, align 8
  %227 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %226, i32 0, i32 0
  %228 = load i32, i32* %227, align 8
  %229 = call i32 @l(i32 %222, i32 %225, i32 %228)
  ret void
}

declare dso_local i32 @l(i32, i32, i32) #1

declare dso_local i32 @cp_set_gsyn(%struct.TYPE_10__*, i32) #1

declare dso_local i32 @cp_set_unfram(%struct.TYPE_10__*, i32) #1

declare dso_local i32 @cp_set_phony(%struct.TYPE_10__*, i32) #1

declare dso_local i32 @cp_set_lloop(%struct.TYPE_10__*, i32) #1

declare dso_local i32 @cp_set_monitor(%struct.TYPE_10__*, i32) #1

declare dso_local i32 @i(%struct.TYPE_10__*, i32, i32) #1

declare dso_local i32 @l90(%struct.TYPE_10__*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
