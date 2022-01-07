; ModuleID = '/home/carl/AnghaBench/freebsd/usr.sbin/mountd/extr_mountd.c_compare_export.c'
source_filename = "/home/carl/AnghaBench/freebsd/usr.sbin/mountd/extr_mountd.c_compare_export.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.exportlist = type { i32, i64, i64, %struct.grouplist*, i32, i32, %struct.TYPE_2__*, i32 }
%struct.grouplist = type { i32, i64, i64, %struct.grouplist*, i32, i32 }
%struct.TYPE_2__ = type { i32 }

@EX_DEFSET = common dso_local global i32 0, align 4
@DP_DEFSET = common dso_local global i32 0, align 4
@GR_FND = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.exportlist*, %struct.exportlist*)* @compare_export to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @compare_export(%struct.exportlist* %0, %struct.exportlist* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.exportlist*, align 8
  %5 = alloca %struct.exportlist*, align 8
  %6 = alloca %struct.grouplist*, align 8
  %7 = alloca %struct.grouplist*, align 8
  store %struct.exportlist* %0, %struct.exportlist** %4, align 8
  store %struct.exportlist* %1, %struct.exportlist** %5, align 8
  %8 = load %struct.exportlist*, %struct.exportlist** %4, align 8
  %9 = getelementptr inbounds %struct.exportlist, %struct.exportlist* %8, i32 0, i32 7
  %10 = load i32, i32* %9, align 8
  %11 = load %struct.exportlist*, %struct.exportlist** %5, align 8
  %12 = getelementptr inbounds %struct.exportlist, %struct.exportlist* %11, i32 0, i32 7
  %13 = load i32, i32* %12, align 8
  %14 = call i64 @strcmp(i32 %10, i32 %13)
  %15 = icmp ne i64 %14, 0
  br i1 %15, label %16, label %17

16:                                               ; preds = %2
  store i32 1, i32* %3, align 4
  br label %228

17:                                               ; preds = %2
  %18 = load %struct.exportlist*, %struct.exportlist** %4, align 8
  %19 = getelementptr inbounds %struct.exportlist, %struct.exportlist* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 8
  %21 = load i32, i32* @EX_DEFSET, align 4
  %22 = and i32 %20, %21
  %23 = load %struct.exportlist*, %struct.exportlist** %5, align 8
  %24 = getelementptr inbounds %struct.exportlist, %struct.exportlist* %23, i32 0, i32 0
  %25 = load i32, i32* %24, align 8
  %26 = load i32, i32* @EX_DEFSET, align 4
  %27 = and i32 %25, %26
  %28 = icmp ne i32 %22, %27
  br i1 %28, label %29, label %30

29:                                               ; preds = %17
  store i32 1, i32* %3, align 4
  br label %228

30:                                               ; preds = %17
  %31 = load %struct.exportlist*, %struct.exportlist** %4, align 8
  %32 = getelementptr inbounds %struct.exportlist, %struct.exportlist* %31, i32 0, i32 6
  %33 = load %struct.TYPE_2__*, %struct.TYPE_2__** %32, align 8
  %34 = icmp ne %struct.TYPE_2__* %33, null
  br i1 %34, label %35, label %40

35:                                               ; preds = %30
  %36 = load %struct.exportlist*, %struct.exportlist** %5, align 8
  %37 = getelementptr inbounds %struct.exportlist, %struct.exportlist* %36, i32 0, i32 6
  %38 = load %struct.TYPE_2__*, %struct.TYPE_2__** %37, align 8
  %39 = icmp eq %struct.TYPE_2__* %38, null
  br i1 %39, label %50, label %40

40:                                               ; preds = %35, %30
  %41 = load %struct.exportlist*, %struct.exportlist** %4, align 8
  %42 = getelementptr inbounds %struct.exportlist, %struct.exportlist* %41, i32 0, i32 6
  %43 = load %struct.TYPE_2__*, %struct.TYPE_2__** %42, align 8
  %44 = icmp eq %struct.TYPE_2__* %43, null
  br i1 %44, label %45, label %51

45:                                               ; preds = %40
  %46 = load %struct.exportlist*, %struct.exportlist** %5, align 8
  %47 = getelementptr inbounds %struct.exportlist, %struct.exportlist* %46, i32 0, i32 6
  %48 = load %struct.TYPE_2__*, %struct.TYPE_2__** %47, align 8
  %49 = icmp ne %struct.TYPE_2__* %48, null
  br i1 %49, label %50, label %51

50:                                               ; preds = %45, %35
  store i32 1, i32* %3, align 4
  br label %228

51:                                               ; preds = %45, %40
  %52 = load %struct.exportlist*, %struct.exportlist** %4, align 8
  %53 = getelementptr inbounds %struct.exportlist, %struct.exportlist* %52, i32 0, i32 6
  %54 = load %struct.TYPE_2__*, %struct.TYPE_2__** %53, align 8
  %55 = icmp ne %struct.TYPE_2__* %54, null
  br i1 %55, label %56, label %73

56:                                               ; preds = %51
  %57 = load %struct.exportlist*, %struct.exportlist** %4, align 8
  %58 = getelementptr inbounds %struct.exportlist, %struct.exportlist* %57, i32 0, i32 6
  %59 = load %struct.TYPE_2__*, %struct.TYPE_2__** %58, align 8
  %60 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %59, i32 0, i32 0
  %61 = load i32, i32* %60, align 4
  %62 = load i32, i32* @DP_DEFSET, align 4
  %63 = and i32 %61, %62
  %64 = load %struct.exportlist*, %struct.exportlist** %5, align 8
  %65 = getelementptr inbounds %struct.exportlist, %struct.exportlist* %64, i32 0, i32 6
  %66 = load %struct.TYPE_2__*, %struct.TYPE_2__** %65, align 8
  %67 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %66, i32 0, i32 0
  %68 = load i32, i32* %67, align 4
  %69 = load i32, i32* @DP_DEFSET, align 4
  %70 = and i32 %68, %69
  %71 = icmp ne i32 %63, %70
  br i1 %71, label %72, label %73

72:                                               ; preds = %56
  store i32 1, i32* %3, align 4
  br label %228

73:                                               ; preds = %56, %51
  %74 = load %struct.exportlist*, %struct.exportlist** %4, align 8
  %75 = getelementptr inbounds %struct.exportlist, %struct.exportlist* %74, i32 0, i32 0
  %76 = load i32, i32* %75, align 8
  %77 = load i32, i32* @EX_DEFSET, align 4
  %78 = and i32 %76, %77
  %79 = icmp ne i32 %78, 0
  br i1 %79, label %80, label %116

80:                                               ; preds = %73
  %81 = load %struct.exportlist*, %struct.exportlist** %4, align 8
  %82 = getelementptr inbounds %struct.exportlist, %struct.exportlist* %81, i32 0, i32 1
  %83 = load i64, i64* %82, align 8
  %84 = load %struct.exportlist*, %struct.exportlist** %5, align 8
  %85 = getelementptr inbounds %struct.exportlist, %struct.exportlist* %84, i32 0, i32 1
  %86 = load i64, i64* %85, align 8
  %87 = icmp ne i64 %83, %86
  br i1 %87, label %115, label %88

88:                                               ; preds = %80
  %89 = load %struct.exportlist*, %struct.exportlist** %4, align 8
  %90 = getelementptr inbounds %struct.exportlist, %struct.exportlist* %89, i32 0, i32 2
  %91 = load i64, i64* %90, align 8
  %92 = load %struct.exportlist*, %struct.exportlist** %5, align 8
  %93 = getelementptr inbounds %struct.exportlist, %struct.exportlist* %92, i32 0, i32 2
  %94 = load i64, i64* %93, align 8
  %95 = icmp ne i64 %91, %94
  br i1 %95, label %115, label %96

96:                                               ; preds = %88
  %97 = load %struct.exportlist*, %struct.exportlist** %4, align 8
  %98 = getelementptr inbounds %struct.exportlist, %struct.exportlist* %97, i32 0, i32 5
  %99 = load %struct.exportlist*, %struct.exportlist** %5, align 8
  %100 = getelementptr inbounds %struct.exportlist, %struct.exportlist* %99, i32 0, i32 5
  %101 = call i64 @compare_cred(i32* %98, i32* %100)
  %102 = icmp ne i64 %101, 0
  br i1 %102, label %115, label %103

103:                                              ; preds = %96
  %104 = load %struct.exportlist*, %struct.exportlist** %4, align 8
  %105 = getelementptr inbounds %struct.exportlist, %struct.exportlist* %104, i32 0, i32 4
  %106 = load i32, i32* %105, align 8
  %107 = load %struct.exportlist*, %struct.exportlist** %5, align 8
  %108 = getelementptr inbounds %struct.exportlist, %struct.exportlist* %107, i32 0, i32 4
  %109 = load i32, i32* %108, align 8
  %110 = load %struct.exportlist*, %struct.exportlist** %4, align 8
  %111 = getelementptr inbounds %struct.exportlist, %struct.exportlist* %110, i32 0, i32 1
  %112 = load i64, i64* %111, align 8
  %113 = call i64 @compare_secflavor(i32 %106, i32 %109, i64 %112)
  %114 = icmp ne i64 %113, 0
  br i1 %114, label %115, label %116

115:                                              ; preds = %103, %96, %88, %80
  store i32 1, i32* %3, align 4
  br label %228

116:                                              ; preds = %103, %73
  %117 = load %struct.exportlist*, %struct.exportlist** %5, align 8
  %118 = getelementptr inbounds %struct.exportlist, %struct.exportlist* %117, i32 0, i32 3
  %119 = load %struct.grouplist*, %struct.grouplist** %118, align 8
  store %struct.grouplist* %119, %struct.grouplist** %7, align 8
  br label %120

120:                                              ; preds = %126, %116
  %121 = load %struct.grouplist*, %struct.grouplist** %7, align 8
  %122 = icmp ne %struct.grouplist* %121, null
  br i1 %122, label %123, label %130

123:                                              ; preds = %120
  %124 = load %struct.grouplist*, %struct.grouplist** %7, align 8
  %125 = getelementptr inbounds %struct.grouplist, %struct.grouplist* %124, i32 0, i32 0
  store i32 0, i32* %125, align 8
  br label %126

126:                                              ; preds = %123
  %127 = load %struct.grouplist*, %struct.grouplist** %7, align 8
  %128 = getelementptr inbounds %struct.grouplist, %struct.grouplist* %127, i32 0, i32 3
  %129 = load %struct.grouplist*, %struct.grouplist** %128, align 8
  store %struct.grouplist* %129, %struct.grouplist** %7, align 8
  br label %120

130:                                              ; preds = %120
  %131 = load %struct.exportlist*, %struct.exportlist** %4, align 8
  %132 = getelementptr inbounds %struct.exportlist, %struct.exportlist* %131, i32 0, i32 3
  %133 = load %struct.grouplist*, %struct.grouplist** %132, align 8
  store %struct.grouplist* %133, %struct.grouplist** %6, align 8
  br label %134

134:                                              ; preds = %203, %130
  %135 = load %struct.grouplist*, %struct.grouplist** %6, align 8
  %136 = icmp ne %struct.grouplist* %135, null
  br i1 %136, label %137, label %207

137:                                              ; preds = %134
  %138 = load %struct.exportlist*, %struct.exportlist** %5, align 8
  %139 = getelementptr inbounds %struct.exportlist, %struct.exportlist* %138, i32 0, i32 3
  %140 = load %struct.grouplist*, %struct.grouplist** %139, align 8
  store %struct.grouplist* %140, %struct.grouplist** %7, align 8
  br label %141

141:                                              ; preds = %188, %137
  %142 = load %struct.grouplist*, %struct.grouplist** %7, align 8
  %143 = icmp ne %struct.grouplist* %142, null
  br i1 %143, label %144, label %192

144:                                              ; preds = %141
  %145 = load %struct.grouplist*, %struct.grouplist** %7, align 8
  %146 = getelementptr inbounds %struct.grouplist, %struct.grouplist* %145, i32 0, i32 0
  %147 = load i32, i32* %146, align 8
  %148 = load i32, i32* @GR_FND, align 4
  %149 = and i32 %147, %148
  %150 = icmp eq i32 %149, 0
  br i1 %150, label %151, label %187

151:                                              ; preds = %144
  %152 = load %struct.grouplist*, %struct.grouplist** %6, align 8
  %153 = getelementptr inbounds %struct.grouplist, %struct.grouplist* %152, i32 0, i32 1
  %154 = load i64, i64* %153, align 8
  %155 = load %struct.grouplist*, %struct.grouplist** %7, align 8
  %156 = getelementptr inbounds %struct.grouplist, %struct.grouplist* %155, i32 0, i32 1
  %157 = load i64, i64* %156, align 8
  %158 = icmp eq i64 %154, %157
  br i1 %158, label %159, label %187

159:                                              ; preds = %151
  %160 = load %struct.grouplist*, %struct.grouplist** %6, align 8
  %161 = getelementptr inbounds %struct.grouplist, %struct.grouplist* %160, i32 0, i32 2
  %162 = load i64, i64* %161, align 8
  %163 = load %struct.grouplist*, %struct.grouplist** %7, align 8
  %164 = getelementptr inbounds %struct.grouplist, %struct.grouplist* %163, i32 0, i32 2
  %165 = load i64, i64* %164, align 8
  %166 = icmp eq i64 %162, %165
  br i1 %166, label %167, label %187

167:                                              ; preds = %159
  %168 = load %struct.grouplist*, %struct.grouplist** %6, align 8
  %169 = getelementptr inbounds %struct.grouplist, %struct.grouplist* %168, i32 0, i32 5
  %170 = load %struct.grouplist*, %struct.grouplist** %7, align 8
  %171 = getelementptr inbounds %struct.grouplist, %struct.grouplist* %170, i32 0, i32 5
  %172 = call i64 @compare_cred(i32* %169, i32* %171)
  %173 = icmp eq i64 %172, 0
  br i1 %173, label %174, label %187

174:                                              ; preds = %167
  %175 = load %struct.grouplist*, %struct.grouplist** %6, align 8
  %176 = getelementptr inbounds %struct.grouplist, %struct.grouplist* %175, i32 0, i32 4
  %177 = load i32, i32* %176, align 8
  %178 = load %struct.grouplist*, %struct.grouplist** %7, align 8
  %179 = getelementptr inbounds %struct.grouplist, %struct.grouplist* %178, i32 0, i32 4
  %180 = load i32, i32* %179, align 8
  %181 = load %struct.grouplist*, %struct.grouplist** %6, align 8
  %182 = getelementptr inbounds %struct.grouplist, %struct.grouplist* %181, i32 0, i32 1
  %183 = load i64, i64* %182, align 8
  %184 = call i64 @compare_secflavor(i32 %177, i32 %180, i64 %183)
  %185 = icmp eq i64 %184, 0
  br i1 %185, label %186, label %187

186:                                              ; preds = %174
  br label %192

187:                                              ; preds = %174, %167, %159, %151, %144
  br label %188

188:                                              ; preds = %187
  %189 = load %struct.grouplist*, %struct.grouplist** %7, align 8
  %190 = getelementptr inbounds %struct.grouplist, %struct.grouplist* %189, i32 0, i32 3
  %191 = load %struct.grouplist*, %struct.grouplist** %190, align 8
  store %struct.grouplist* %191, %struct.grouplist** %7, align 8
  br label %141

192:                                              ; preds = %186, %141
  %193 = load %struct.grouplist*, %struct.grouplist** %7, align 8
  %194 = icmp ne %struct.grouplist* %193, null
  br i1 %194, label %195, label %201

195:                                              ; preds = %192
  %196 = load i32, i32* @GR_FND, align 4
  %197 = load %struct.grouplist*, %struct.grouplist** %7, align 8
  %198 = getelementptr inbounds %struct.grouplist, %struct.grouplist* %197, i32 0, i32 0
  %199 = load i32, i32* %198, align 8
  %200 = or i32 %199, %196
  store i32 %200, i32* %198, align 8
  br label %202

201:                                              ; preds = %192
  store i32 1, i32* %3, align 4
  br label %228

202:                                              ; preds = %195
  br label %203

203:                                              ; preds = %202
  %204 = load %struct.grouplist*, %struct.grouplist** %6, align 8
  %205 = getelementptr inbounds %struct.grouplist, %struct.grouplist* %204, i32 0, i32 3
  %206 = load %struct.grouplist*, %struct.grouplist** %205, align 8
  store %struct.grouplist* %206, %struct.grouplist** %6, align 8
  br label %134

207:                                              ; preds = %134
  %208 = load %struct.exportlist*, %struct.exportlist** %5, align 8
  %209 = getelementptr inbounds %struct.exportlist, %struct.exportlist* %208, i32 0, i32 3
  %210 = load %struct.grouplist*, %struct.grouplist** %209, align 8
  store %struct.grouplist* %210, %struct.grouplist** %7, align 8
  br label %211

211:                                              ; preds = %223, %207
  %212 = load %struct.grouplist*, %struct.grouplist** %7, align 8
  %213 = icmp ne %struct.grouplist* %212, null
  br i1 %213, label %214, label %227

214:                                              ; preds = %211
  %215 = load %struct.grouplist*, %struct.grouplist** %7, align 8
  %216 = getelementptr inbounds %struct.grouplist, %struct.grouplist* %215, i32 0, i32 0
  %217 = load i32, i32* %216, align 8
  %218 = load i32, i32* @GR_FND, align 4
  %219 = and i32 %217, %218
  %220 = icmp eq i32 %219, 0
  br i1 %220, label %221, label %222

221:                                              ; preds = %214
  store i32 1, i32* %3, align 4
  br label %228

222:                                              ; preds = %214
  br label %223

223:                                              ; preds = %222
  %224 = load %struct.grouplist*, %struct.grouplist** %7, align 8
  %225 = getelementptr inbounds %struct.grouplist, %struct.grouplist* %224, i32 0, i32 3
  %226 = load %struct.grouplist*, %struct.grouplist** %225, align 8
  store %struct.grouplist* %226, %struct.grouplist** %7, align 8
  br label %211

227:                                              ; preds = %211
  store i32 0, i32* %3, align 4
  br label %228

228:                                              ; preds = %227, %221, %201, %115, %72, %50, %29, %16
  %229 = load i32, i32* %3, align 4
  ret i32 %229
}

declare dso_local i64 @strcmp(i32, i32) #1

declare dso_local i64 @compare_cred(i32*, i32*) #1

declare dso_local i64 @compare_secflavor(i32, i32, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
