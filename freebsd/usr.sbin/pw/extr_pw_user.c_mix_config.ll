; ModuleID = '/home/carl/AnghaBench/freebsd/usr.sbin/pw/extr_pw_user.c_mix_config.c'
source_filename = "/home/carl/AnghaBench/freebsd/usr.sbin/pw/extr_pw_user.c_mix_config.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.userconf = type { i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i32*, i32*, i32*, i32*, i32*, i32*, i32*, i32*, i32*, i32*, i32* }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.userconf*, %struct.userconf*)* @mix_config to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @mix_config(%struct.userconf* %0, %struct.userconf* %1) #0 {
  %3 = alloca %struct.userconf*, align 8
  %4 = alloca %struct.userconf*, align 8
  store %struct.userconf* %0, %struct.userconf** %3, align 8
  store %struct.userconf* %1, %struct.userconf** %4, align 8
  %5 = load %struct.userconf*, %struct.userconf** %3, align 8
  %6 = getelementptr inbounds %struct.userconf, %struct.userconf* %5, i32 0, i32 0
  %7 = load i64, i64* %6, align 8
  %8 = icmp slt i64 %7, 0
  br i1 %8, label %9, label %15

9:                                                ; preds = %2
  %10 = load %struct.userconf*, %struct.userconf** %4, align 8
  %11 = getelementptr inbounds %struct.userconf, %struct.userconf* %10, i32 0, i32 0
  %12 = load i64, i64* %11, align 8
  %13 = load %struct.userconf*, %struct.userconf** %3, align 8
  %14 = getelementptr inbounds %struct.userconf, %struct.userconf* %13, i32 0, i32 0
  store i64 %12, i64* %14, align 8
  br label %15

15:                                               ; preds = %9, %2
  %16 = load %struct.userconf*, %struct.userconf** %3, align 8
  %17 = getelementptr inbounds %struct.userconf, %struct.userconf* %16, i32 0, i32 1
  %18 = load i64, i64* %17, align 8
  %19 = icmp eq i64 %18, 0
  br i1 %19, label %20, label %26

20:                                               ; preds = %15
  %21 = load %struct.userconf*, %struct.userconf** %4, align 8
  %22 = getelementptr inbounds %struct.userconf, %struct.userconf* %21, i32 0, i32 1
  %23 = load i64, i64* %22, align 8
  %24 = load %struct.userconf*, %struct.userconf** %3, align 8
  %25 = getelementptr inbounds %struct.userconf, %struct.userconf* %24, i32 0, i32 1
  store i64 %23, i64* %25, align 8
  br label %26

26:                                               ; preds = %20, %15
  %27 = load %struct.userconf*, %struct.userconf** %3, align 8
  %28 = getelementptr inbounds %struct.userconf, %struct.userconf* %27, i32 0, i32 2
  %29 = load i64, i64* %28, align 8
  %30 = icmp eq i64 %29, 0
  br i1 %30, label %31, label %37

31:                                               ; preds = %26
  %32 = load %struct.userconf*, %struct.userconf** %4, align 8
  %33 = getelementptr inbounds %struct.userconf, %struct.userconf* %32, i32 0, i32 2
  %34 = load i64, i64* %33, align 8
  %35 = load %struct.userconf*, %struct.userconf** %3, align 8
  %36 = getelementptr inbounds %struct.userconf, %struct.userconf* %35, i32 0, i32 2
  store i64 %34, i64* %36, align 8
  br label %37

37:                                               ; preds = %31, %26
  %38 = load %struct.userconf*, %struct.userconf** %3, align 8
  %39 = getelementptr inbounds %struct.userconf, %struct.userconf* %38, i32 0, i32 20
  %40 = load i32*, i32** %39, align 8
  %41 = icmp eq i32* %40, null
  br i1 %41, label %42, label %48

42:                                               ; preds = %37
  %43 = load %struct.userconf*, %struct.userconf** %4, align 8
  %44 = getelementptr inbounds %struct.userconf, %struct.userconf* %43, i32 0, i32 20
  %45 = load i32*, i32** %44, align 8
  %46 = load %struct.userconf*, %struct.userconf** %3, align 8
  %47 = getelementptr inbounds %struct.userconf, %struct.userconf* %46, i32 0, i32 20
  store i32* %45, i32** %47, align 8
  br label %48

48:                                               ; preds = %42, %37
  %49 = load %struct.userconf*, %struct.userconf** %3, align 8
  %50 = getelementptr inbounds %struct.userconf, %struct.userconf* %49, i32 0, i32 19
  %51 = load i32*, i32** %50, align 8
  %52 = icmp eq i32* %51, null
  br i1 %52, label %53, label %59

53:                                               ; preds = %48
  %54 = load %struct.userconf*, %struct.userconf** %4, align 8
  %55 = getelementptr inbounds %struct.userconf, %struct.userconf* %54, i32 0, i32 19
  %56 = load i32*, i32** %55, align 8
  %57 = load %struct.userconf*, %struct.userconf** %3, align 8
  %58 = getelementptr inbounds %struct.userconf, %struct.userconf* %57, i32 0, i32 19
  store i32* %56, i32** %58, align 8
  br label %59

59:                                               ; preds = %53, %48
  %60 = load %struct.userconf*, %struct.userconf** %3, align 8
  %61 = getelementptr inbounds %struct.userconf, %struct.userconf* %60, i32 0, i32 18
  %62 = load i32*, i32** %61, align 8
  %63 = icmp eq i32* %62, null
  br i1 %63, label %64, label %70

64:                                               ; preds = %59
  %65 = load %struct.userconf*, %struct.userconf** %4, align 8
  %66 = getelementptr inbounds %struct.userconf, %struct.userconf* %65, i32 0, i32 18
  %67 = load i32*, i32** %66, align 8
  %68 = load %struct.userconf*, %struct.userconf** %3, align 8
  %69 = getelementptr inbounds %struct.userconf, %struct.userconf* %68, i32 0, i32 18
  store i32* %67, i32** %69, align 8
  br label %70

70:                                               ; preds = %64, %59
  %71 = load %struct.userconf*, %struct.userconf** %3, align 8
  %72 = getelementptr inbounds %struct.userconf, %struct.userconf* %71, i32 0, i32 17
  %73 = load i32*, i32** %72, align 8
  %74 = icmp eq i32* %73, null
  br i1 %74, label %75, label %81

75:                                               ; preds = %70
  %76 = load %struct.userconf*, %struct.userconf** %4, align 8
  %77 = getelementptr inbounds %struct.userconf, %struct.userconf* %76, i32 0, i32 17
  %78 = load i32*, i32** %77, align 8
  %79 = load %struct.userconf*, %struct.userconf** %3, align 8
  %80 = getelementptr inbounds %struct.userconf, %struct.userconf* %79, i32 0, i32 17
  store i32* %78, i32** %80, align 8
  br label %81

81:                                               ; preds = %75, %70
  %82 = load %struct.userconf*, %struct.userconf** %3, align 8
  %83 = getelementptr inbounds %struct.userconf, %struct.userconf* %82, i32 0, i32 16
  %84 = load i32*, i32** %83, align 8
  %85 = icmp eq i32* %84, null
  br i1 %85, label %86, label %92

86:                                               ; preds = %81
  %87 = load %struct.userconf*, %struct.userconf** %4, align 8
  %88 = getelementptr inbounds %struct.userconf, %struct.userconf* %87, i32 0, i32 16
  %89 = load i32*, i32** %88, align 8
  %90 = load %struct.userconf*, %struct.userconf** %3, align 8
  %91 = getelementptr inbounds %struct.userconf, %struct.userconf* %90, i32 0, i32 16
  store i32* %89, i32** %91, align 8
  br label %92

92:                                               ; preds = %86, %81
  %93 = load %struct.userconf*, %struct.userconf** %3, align 8
  %94 = getelementptr inbounds %struct.userconf, %struct.userconf* %93, i32 0, i32 3
  %95 = load i64, i64* %94, align 8
  %96 = icmp eq i64 %95, 0
  br i1 %96, label %97, label %103

97:                                               ; preds = %92
  %98 = load %struct.userconf*, %struct.userconf** %4, align 8
  %99 = getelementptr inbounds %struct.userconf, %struct.userconf* %98, i32 0, i32 3
  %100 = load i64, i64* %99, align 8
  %101 = load %struct.userconf*, %struct.userconf** %3, align 8
  %102 = getelementptr inbounds %struct.userconf, %struct.userconf* %101, i32 0, i32 3
  store i64 %100, i64* %102, align 8
  br label %103

103:                                              ; preds = %97, %92
  %104 = load %struct.userconf*, %struct.userconf** %3, align 8
  %105 = getelementptr inbounds %struct.userconf, %struct.userconf* %104, i32 0, i32 15
  %106 = load i32*, i32** %105, align 8
  %107 = icmp eq i32* %106, null
  br i1 %107, label %108, label %114

108:                                              ; preds = %103
  %109 = load %struct.userconf*, %struct.userconf** %4, align 8
  %110 = getelementptr inbounds %struct.userconf, %struct.userconf* %109, i32 0, i32 15
  %111 = load i32*, i32** %110, align 8
  %112 = load %struct.userconf*, %struct.userconf** %3, align 8
  %113 = getelementptr inbounds %struct.userconf, %struct.userconf* %112, i32 0, i32 15
  store i32* %111, i32** %113, align 8
  br label %114

114:                                              ; preds = %108, %103
  %115 = load %struct.userconf*, %struct.userconf** %3, align 8
  %116 = getelementptr inbounds %struct.userconf, %struct.userconf* %115, i32 0, i32 14
  %117 = load i32*, i32** %116, align 8
  %118 = icmp eq i32* %117, null
  br i1 %118, label %119, label %125

119:                                              ; preds = %114
  %120 = load %struct.userconf*, %struct.userconf** %4, align 8
  %121 = getelementptr inbounds %struct.userconf, %struct.userconf* %120, i32 0, i32 14
  %122 = load i32*, i32** %121, align 8
  %123 = load %struct.userconf*, %struct.userconf** %3, align 8
  %124 = getelementptr inbounds %struct.userconf, %struct.userconf* %123, i32 0, i32 14
  store i32* %122, i32** %124, align 8
  br label %125

125:                                              ; preds = %119, %114
  %126 = load %struct.userconf*, %struct.userconf** %3, align 8
  %127 = getelementptr inbounds %struct.userconf, %struct.userconf* %126, i32 0, i32 13
  %128 = load i32*, i32** %127, align 8
  %129 = icmp eq i32* %128, null
  br i1 %129, label %130, label %136

130:                                              ; preds = %125
  %131 = load %struct.userconf*, %struct.userconf** %4, align 8
  %132 = getelementptr inbounds %struct.userconf, %struct.userconf* %131, i32 0, i32 13
  %133 = load i32*, i32** %132, align 8
  %134 = load %struct.userconf*, %struct.userconf** %3, align 8
  %135 = getelementptr inbounds %struct.userconf, %struct.userconf* %134, i32 0, i32 13
  store i32* %133, i32** %135, align 8
  br label %136

136:                                              ; preds = %130, %125
  %137 = load %struct.userconf*, %struct.userconf** %3, align 8
  %138 = getelementptr inbounds %struct.userconf, %struct.userconf* %137, i32 0, i32 12
  %139 = load i32*, i32** %138, align 8
  %140 = icmp eq i32* %139, null
  br i1 %140, label %141, label %147

141:                                              ; preds = %136
  %142 = load %struct.userconf*, %struct.userconf** %4, align 8
  %143 = getelementptr inbounds %struct.userconf, %struct.userconf* %142, i32 0, i32 12
  %144 = load i32*, i32** %143, align 8
  %145 = load %struct.userconf*, %struct.userconf** %3, align 8
  %146 = getelementptr inbounds %struct.userconf, %struct.userconf* %145, i32 0, i32 12
  store i32* %144, i32** %146, align 8
  br label %147

147:                                              ; preds = %141, %136
  %148 = load %struct.userconf*, %struct.userconf** %3, align 8
  %149 = getelementptr inbounds %struct.userconf, %struct.userconf* %148, i32 0, i32 11
  %150 = load i32*, i32** %149, align 8
  %151 = icmp eq i32* %150, null
  br i1 %151, label %152, label %158

152:                                              ; preds = %147
  %153 = load %struct.userconf*, %struct.userconf** %4, align 8
  %154 = getelementptr inbounds %struct.userconf, %struct.userconf* %153, i32 0, i32 11
  %155 = load i32*, i32** %154, align 8
  %156 = load %struct.userconf*, %struct.userconf** %3, align 8
  %157 = getelementptr inbounds %struct.userconf, %struct.userconf* %156, i32 0, i32 11
  store i32* %155, i32** %157, align 8
  br label %158

158:                                              ; preds = %152, %147
  %159 = load %struct.userconf*, %struct.userconf** %3, align 8
  %160 = getelementptr inbounds %struct.userconf, %struct.userconf* %159, i32 0, i32 10
  %161 = load i32*, i32** %160, align 8
  %162 = icmp eq i32* %161, null
  br i1 %162, label %163, label %169

163:                                              ; preds = %158
  %164 = load %struct.userconf*, %struct.userconf** %4, align 8
  %165 = getelementptr inbounds %struct.userconf, %struct.userconf* %164, i32 0, i32 10
  %166 = load i32*, i32** %165, align 8
  %167 = load %struct.userconf*, %struct.userconf** %3, align 8
  %168 = getelementptr inbounds %struct.userconf, %struct.userconf* %167, i32 0, i32 10
  store i32* %166, i32** %168, align 8
  br label %169

169:                                              ; preds = %163, %158
  %170 = load %struct.userconf*, %struct.userconf** %3, align 8
  %171 = getelementptr inbounds %struct.userconf, %struct.userconf* %170, i32 0, i32 4
  %172 = load i64, i64* %171, align 8
  %173 = icmp eq i64 %172, 0
  br i1 %173, label %174, label %180

174:                                              ; preds = %169
  %175 = load %struct.userconf*, %struct.userconf** %4, align 8
  %176 = getelementptr inbounds %struct.userconf, %struct.userconf* %175, i32 0, i32 4
  %177 = load i64, i64* %176, align 8
  %178 = load %struct.userconf*, %struct.userconf** %3, align 8
  %179 = getelementptr inbounds %struct.userconf, %struct.userconf* %178, i32 0, i32 4
  store i64 %177, i64* %179, align 8
  br label %180

180:                                              ; preds = %174, %169
  %181 = load %struct.userconf*, %struct.userconf** %3, align 8
  %182 = getelementptr inbounds %struct.userconf, %struct.userconf* %181, i32 0, i32 5
  %183 = load i64, i64* %182, align 8
  %184 = icmp eq i64 %183, 0
  br i1 %184, label %185, label %191

185:                                              ; preds = %180
  %186 = load %struct.userconf*, %struct.userconf** %4, align 8
  %187 = getelementptr inbounds %struct.userconf, %struct.userconf* %186, i32 0, i32 5
  %188 = load i64, i64* %187, align 8
  %189 = load %struct.userconf*, %struct.userconf** %3, align 8
  %190 = getelementptr inbounds %struct.userconf, %struct.userconf* %189, i32 0, i32 5
  store i64 %188, i64* %190, align 8
  br label %191

191:                                              ; preds = %185, %180
  %192 = load %struct.userconf*, %struct.userconf** %3, align 8
  %193 = getelementptr inbounds %struct.userconf, %struct.userconf* %192, i32 0, i32 6
  %194 = load i64, i64* %193, align 8
  %195 = icmp eq i64 %194, 0
  br i1 %195, label %196, label %202

196:                                              ; preds = %191
  %197 = load %struct.userconf*, %struct.userconf** %4, align 8
  %198 = getelementptr inbounds %struct.userconf, %struct.userconf* %197, i32 0, i32 6
  %199 = load i64, i64* %198, align 8
  %200 = load %struct.userconf*, %struct.userconf** %3, align 8
  %201 = getelementptr inbounds %struct.userconf, %struct.userconf* %200, i32 0, i32 6
  store i64 %199, i64* %201, align 8
  br label %202

202:                                              ; preds = %196, %191
  %203 = load %struct.userconf*, %struct.userconf** %3, align 8
  %204 = getelementptr inbounds %struct.userconf, %struct.userconf* %203, i32 0, i32 7
  %205 = load i64, i64* %204, align 8
  %206 = icmp eq i64 %205, 0
  br i1 %206, label %207, label %213

207:                                              ; preds = %202
  %208 = load %struct.userconf*, %struct.userconf** %4, align 8
  %209 = getelementptr inbounds %struct.userconf, %struct.userconf* %208, i32 0, i32 7
  %210 = load i64, i64* %209, align 8
  %211 = load %struct.userconf*, %struct.userconf** %3, align 8
  %212 = getelementptr inbounds %struct.userconf, %struct.userconf* %211, i32 0, i32 7
  store i64 %210, i64* %212, align 8
  br label %213

213:                                              ; preds = %207, %202
  %214 = load %struct.userconf*, %struct.userconf** %3, align 8
  %215 = getelementptr inbounds %struct.userconf, %struct.userconf* %214, i32 0, i32 8
  %216 = load i64, i64* %215, align 8
  %217 = icmp slt i64 %216, 0
  br i1 %217, label %218, label %224

218:                                              ; preds = %213
  %219 = load %struct.userconf*, %struct.userconf** %4, align 8
  %220 = getelementptr inbounds %struct.userconf, %struct.userconf* %219, i32 0, i32 8
  %221 = load i64, i64* %220, align 8
  %222 = load %struct.userconf*, %struct.userconf** %3, align 8
  %223 = getelementptr inbounds %struct.userconf, %struct.userconf* %222, i32 0, i32 8
  store i64 %221, i64* %223, align 8
  br label %224

224:                                              ; preds = %218, %213
  %225 = load %struct.userconf*, %struct.userconf** %3, align 8
  %226 = getelementptr inbounds %struct.userconf, %struct.userconf* %225, i32 0, i32 9
  %227 = load i64, i64* %226, align 8
  %228 = icmp slt i64 %227, 0
  br i1 %228, label %229, label %235

229:                                              ; preds = %224
  %230 = load %struct.userconf*, %struct.userconf** %4, align 8
  %231 = getelementptr inbounds %struct.userconf, %struct.userconf* %230, i32 0, i32 9
  %232 = load i64, i64* %231, align 8
  %233 = load %struct.userconf*, %struct.userconf** %3, align 8
  %234 = getelementptr inbounds %struct.userconf, %struct.userconf* %233, i32 0, i32 9
  store i64 %232, i64* %234, align 8
  br label %235

235:                                              ; preds = %229, %224
  ret void
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
