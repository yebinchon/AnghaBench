; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/pci/extr_pci_user.c_pci_conf_match_native.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/pci/extr_pci_user.c_pci_conf_match_native.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pci_match_conf = type { i32, i64, i64, i64, i64, i32, %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i64, i64, i64, i64 }
%struct.pci_conf = type { i64, i64, i64, i64, i32, %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i64, i64, i64, i64 }

@PCI_GETCONF_NO_MATCH = common dso_local global i32 0, align 4
@PCI_GETCONF_MATCH_DOMAIN = common dso_local global i32 0, align 4
@PCI_GETCONF_MATCH_BUS = common dso_local global i32 0, align 4
@PCI_GETCONF_MATCH_DEV = common dso_local global i32 0, align 4
@PCI_GETCONF_MATCH_FUNC = common dso_local global i32 0, align 4
@PCI_GETCONF_MATCH_VENDOR = common dso_local global i32 0, align 4
@PCI_GETCONF_MATCH_DEVICE = common dso_local global i32 0, align 4
@PCI_GETCONF_MATCH_CLASS = common dso_local global i32 0, align 4
@PCI_GETCONF_MATCH_UNIT = common dso_local global i32 0, align 4
@PCI_GETCONF_MATCH_NAME = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.pci_match_conf*, i32, %struct.pci_conf*)* @pci_conf_match_native to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @pci_conf_match_native(%struct.pci_match_conf* %0, i32 %1, %struct.pci_conf* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.pci_match_conf*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.pci_conf*, align 8
  %8 = alloca i32, align 4
  store %struct.pci_match_conf* %0, %struct.pci_match_conf** %5, align 8
  store i32 %1, i32* %6, align 4
  store %struct.pci_conf* %2, %struct.pci_conf** %7, align 8
  %9 = load %struct.pci_match_conf*, %struct.pci_match_conf** %5, align 8
  %10 = icmp eq %struct.pci_match_conf* %9, null
  br i1 %10, label %17, label %11

11:                                               ; preds = %3
  %12 = load %struct.pci_conf*, %struct.pci_conf** %7, align 8
  %13 = icmp eq %struct.pci_conf* %12, null
  br i1 %13, label %17, label %14

14:                                               ; preds = %11
  %15 = load i32, i32* %6, align 4
  %16 = icmp sle i32 %15, 0
  br i1 %16, label %17, label %18

17:                                               ; preds = %14, %11, %3
  store i32 1, i32* %4, align 4
  br label %245

18:                                               ; preds = %14
  store i32 0, i32* %8, align 4
  br label %19

19:                                               ; preds = %241, %18
  %20 = load i32, i32* %8, align 4
  %21 = load i32, i32* %6, align 4
  %22 = icmp slt i32 %20, %21
  br i1 %22, label %23, label %244

23:                                               ; preds = %19
  %24 = load %struct.pci_match_conf*, %struct.pci_match_conf** %5, align 8
  %25 = load i32, i32* %8, align 4
  %26 = sext i32 %25 to i64
  %27 = getelementptr inbounds %struct.pci_match_conf, %struct.pci_match_conf* %24, i64 %26
  %28 = getelementptr inbounds %struct.pci_match_conf, %struct.pci_match_conf* %27, i32 0, i32 0
  %29 = load i32, i32* %28, align 8
  %30 = load i32, i32* @PCI_GETCONF_NO_MATCH, align 4
  %31 = icmp eq i32 %29, %30
  br i1 %31, label %32, label %33

32:                                               ; preds = %23
  br label %241

33:                                               ; preds = %23
  %34 = load %struct.pci_match_conf*, %struct.pci_match_conf** %5, align 8
  %35 = load i32, i32* %8, align 4
  %36 = sext i32 %35 to i64
  %37 = getelementptr inbounds %struct.pci_match_conf, %struct.pci_match_conf* %34, i64 %36
  %38 = getelementptr inbounds %struct.pci_match_conf, %struct.pci_match_conf* %37, i32 0, i32 0
  %39 = load i32, i32* %38, align 8
  %40 = load i32, i32* @PCI_GETCONF_MATCH_DOMAIN, align 4
  %41 = and i32 %39, %40
  %42 = icmp ne i32 %41, 0
  br i1 %42, label %43, label %57

43:                                               ; preds = %33
  %44 = load %struct.pci_conf*, %struct.pci_conf** %7, align 8
  %45 = getelementptr inbounds %struct.pci_conf, %struct.pci_conf* %44, i32 0, i32 5
  %46 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %45, i32 0, i32 0
  %47 = load i64, i64* %46, align 8
  %48 = load %struct.pci_match_conf*, %struct.pci_match_conf** %5, align 8
  %49 = load i32, i32* %8, align 4
  %50 = sext i32 %49 to i64
  %51 = getelementptr inbounds %struct.pci_match_conf, %struct.pci_match_conf* %48, i64 %50
  %52 = getelementptr inbounds %struct.pci_match_conf, %struct.pci_match_conf* %51, i32 0, i32 6
  %53 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %52, i32 0, i32 0
  %54 = load i64, i64* %53, align 8
  %55 = icmp ne i64 %47, %54
  br i1 %55, label %56, label %57

56:                                               ; preds = %43
  br label %241

57:                                               ; preds = %43, %33
  %58 = load %struct.pci_match_conf*, %struct.pci_match_conf** %5, align 8
  %59 = load i32, i32* %8, align 4
  %60 = sext i32 %59 to i64
  %61 = getelementptr inbounds %struct.pci_match_conf, %struct.pci_match_conf* %58, i64 %60
  %62 = getelementptr inbounds %struct.pci_match_conf, %struct.pci_match_conf* %61, i32 0, i32 0
  %63 = load i32, i32* %62, align 8
  %64 = load i32, i32* @PCI_GETCONF_MATCH_BUS, align 4
  %65 = and i32 %63, %64
  %66 = icmp ne i32 %65, 0
  br i1 %66, label %67, label %81

67:                                               ; preds = %57
  %68 = load %struct.pci_conf*, %struct.pci_conf** %7, align 8
  %69 = getelementptr inbounds %struct.pci_conf, %struct.pci_conf* %68, i32 0, i32 5
  %70 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %69, i32 0, i32 1
  %71 = load i64, i64* %70, align 8
  %72 = load %struct.pci_match_conf*, %struct.pci_match_conf** %5, align 8
  %73 = load i32, i32* %8, align 4
  %74 = sext i32 %73 to i64
  %75 = getelementptr inbounds %struct.pci_match_conf, %struct.pci_match_conf* %72, i64 %74
  %76 = getelementptr inbounds %struct.pci_match_conf, %struct.pci_match_conf* %75, i32 0, i32 6
  %77 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %76, i32 0, i32 1
  %78 = load i64, i64* %77, align 8
  %79 = icmp ne i64 %71, %78
  br i1 %79, label %80, label %81

80:                                               ; preds = %67
  br label %241

81:                                               ; preds = %67, %57
  %82 = load %struct.pci_match_conf*, %struct.pci_match_conf** %5, align 8
  %83 = load i32, i32* %8, align 4
  %84 = sext i32 %83 to i64
  %85 = getelementptr inbounds %struct.pci_match_conf, %struct.pci_match_conf* %82, i64 %84
  %86 = getelementptr inbounds %struct.pci_match_conf, %struct.pci_match_conf* %85, i32 0, i32 0
  %87 = load i32, i32* %86, align 8
  %88 = load i32, i32* @PCI_GETCONF_MATCH_DEV, align 4
  %89 = and i32 %87, %88
  %90 = icmp ne i32 %89, 0
  br i1 %90, label %91, label %105

91:                                               ; preds = %81
  %92 = load %struct.pci_conf*, %struct.pci_conf** %7, align 8
  %93 = getelementptr inbounds %struct.pci_conf, %struct.pci_conf* %92, i32 0, i32 5
  %94 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %93, i32 0, i32 2
  %95 = load i64, i64* %94, align 8
  %96 = load %struct.pci_match_conf*, %struct.pci_match_conf** %5, align 8
  %97 = load i32, i32* %8, align 4
  %98 = sext i32 %97 to i64
  %99 = getelementptr inbounds %struct.pci_match_conf, %struct.pci_match_conf* %96, i64 %98
  %100 = getelementptr inbounds %struct.pci_match_conf, %struct.pci_match_conf* %99, i32 0, i32 6
  %101 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %100, i32 0, i32 2
  %102 = load i64, i64* %101, align 8
  %103 = icmp ne i64 %95, %102
  br i1 %103, label %104, label %105

104:                                              ; preds = %91
  br label %241

105:                                              ; preds = %91, %81
  %106 = load %struct.pci_match_conf*, %struct.pci_match_conf** %5, align 8
  %107 = load i32, i32* %8, align 4
  %108 = sext i32 %107 to i64
  %109 = getelementptr inbounds %struct.pci_match_conf, %struct.pci_match_conf* %106, i64 %108
  %110 = getelementptr inbounds %struct.pci_match_conf, %struct.pci_match_conf* %109, i32 0, i32 0
  %111 = load i32, i32* %110, align 8
  %112 = load i32, i32* @PCI_GETCONF_MATCH_FUNC, align 4
  %113 = and i32 %111, %112
  %114 = icmp ne i32 %113, 0
  br i1 %114, label %115, label %129

115:                                              ; preds = %105
  %116 = load %struct.pci_conf*, %struct.pci_conf** %7, align 8
  %117 = getelementptr inbounds %struct.pci_conf, %struct.pci_conf* %116, i32 0, i32 5
  %118 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %117, i32 0, i32 3
  %119 = load i64, i64* %118, align 8
  %120 = load %struct.pci_match_conf*, %struct.pci_match_conf** %5, align 8
  %121 = load i32, i32* %8, align 4
  %122 = sext i32 %121 to i64
  %123 = getelementptr inbounds %struct.pci_match_conf, %struct.pci_match_conf* %120, i64 %122
  %124 = getelementptr inbounds %struct.pci_match_conf, %struct.pci_match_conf* %123, i32 0, i32 6
  %125 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %124, i32 0, i32 3
  %126 = load i64, i64* %125, align 8
  %127 = icmp ne i64 %119, %126
  br i1 %127, label %128, label %129

128:                                              ; preds = %115
  br label %241

129:                                              ; preds = %115, %105
  %130 = load %struct.pci_match_conf*, %struct.pci_match_conf** %5, align 8
  %131 = load i32, i32* %8, align 4
  %132 = sext i32 %131 to i64
  %133 = getelementptr inbounds %struct.pci_match_conf, %struct.pci_match_conf* %130, i64 %132
  %134 = getelementptr inbounds %struct.pci_match_conf, %struct.pci_match_conf* %133, i32 0, i32 0
  %135 = load i32, i32* %134, align 8
  %136 = load i32, i32* @PCI_GETCONF_MATCH_VENDOR, align 4
  %137 = and i32 %135, %136
  %138 = icmp ne i32 %137, 0
  br i1 %138, label %139, label %151

139:                                              ; preds = %129
  %140 = load %struct.pci_conf*, %struct.pci_conf** %7, align 8
  %141 = getelementptr inbounds %struct.pci_conf, %struct.pci_conf* %140, i32 0, i32 0
  %142 = load i64, i64* %141, align 8
  %143 = load %struct.pci_match_conf*, %struct.pci_match_conf** %5, align 8
  %144 = load i32, i32* %8, align 4
  %145 = sext i32 %144 to i64
  %146 = getelementptr inbounds %struct.pci_match_conf, %struct.pci_match_conf* %143, i64 %145
  %147 = getelementptr inbounds %struct.pci_match_conf, %struct.pci_match_conf* %146, i32 0, i32 1
  %148 = load i64, i64* %147, align 8
  %149 = icmp ne i64 %142, %148
  br i1 %149, label %150, label %151

150:                                              ; preds = %139
  br label %241

151:                                              ; preds = %139, %129
  %152 = load %struct.pci_match_conf*, %struct.pci_match_conf** %5, align 8
  %153 = load i32, i32* %8, align 4
  %154 = sext i32 %153 to i64
  %155 = getelementptr inbounds %struct.pci_match_conf, %struct.pci_match_conf* %152, i64 %154
  %156 = getelementptr inbounds %struct.pci_match_conf, %struct.pci_match_conf* %155, i32 0, i32 0
  %157 = load i32, i32* %156, align 8
  %158 = load i32, i32* @PCI_GETCONF_MATCH_DEVICE, align 4
  %159 = and i32 %157, %158
  %160 = icmp ne i32 %159, 0
  br i1 %160, label %161, label %173

161:                                              ; preds = %151
  %162 = load %struct.pci_conf*, %struct.pci_conf** %7, align 8
  %163 = getelementptr inbounds %struct.pci_conf, %struct.pci_conf* %162, i32 0, i32 1
  %164 = load i64, i64* %163, align 8
  %165 = load %struct.pci_match_conf*, %struct.pci_match_conf** %5, align 8
  %166 = load i32, i32* %8, align 4
  %167 = sext i32 %166 to i64
  %168 = getelementptr inbounds %struct.pci_match_conf, %struct.pci_match_conf* %165, i64 %167
  %169 = getelementptr inbounds %struct.pci_match_conf, %struct.pci_match_conf* %168, i32 0, i32 2
  %170 = load i64, i64* %169, align 8
  %171 = icmp ne i64 %164, %170
  br i1 %171, label %172, label %173

172:                                              ; preds = %161
  br label %241

173:                                              ; preds = %161, %151
  %174 = load %struct.pci_match_conf*, %struct.pci_match_conf** %5, align 8
  %175 = load i32, i32* %8, align 4
  %176 = sext i32 %175 to i64
  %177 = getelementptr inbounds %struct.pci_match_conf, %struct.pci_match_conf* %174, i64 %176
  %178 = getelementptr inbounds %struct.pci_match_conf, %struct.pci_match_conf* %177, i32 0, i32 0
  %179 = load i32, i32* %178, align 8
  %180 = load i32, i32* @PCI_GETCONF_MATCH_CLASS, align 4
  %181 = and i32 %179, %180
  %182 = icmp ne i32 %181, 0
  br i1 %182, label %183, label %195

183:                                              ; preds = %173
  %184 = load %struct.pci_conf*, %struct.pci_conf** %7, align 8
  %185 = getelementptr inbounds %struct.pci_conf, %struct.pci_conf* %184, i32 0, i32 2
  %186 = load i64, i64* %185, align 8
  %187 = load %struct.pci_match_conf*, %struct.pci_match_conf** %5, align 8
  %188 = load i32, i32* %8, align 4
  %189 = sext i32 %188 to i64
  %190 = getelementptr inbounds %struct.pci_match_conf, %struct.pci_match_conf* %187, i64 %189
  %191 = getelementptr inbounds %struct.pci_match_conf, %struct.pci_match_conf* %190, i32 0, i32 3
  %192 = load i64, i64* %191, align 8
  %193 = icmp ne i64 %186, %192
  br i1 %193, label %194, label %195

194:                                              ; preds = %183
  br label %241

195:                                              ; preds = %183, %173
  %196 = load %struct.pci_match_conf*, %struct.pci_match_conf** %5, align 8
  %197 = load i32, i32* %8, align 4
  %198 = sext i32 %197 to i64
  %199 = getelementptr inbounds %struct.pci_match_conf, %struct.pci_match_conf* %196, i64 %198
  %200 = getelementptr inbounds %struct.pci_match_conf, %struct.pci_match_conf* %199, i32 0, i32 0
  %201 = load i32, i32* %200, align 8
  %202 = load i32, i32* @PCI_GETCONF_MATCH_UNIT, align 4
  %203 = and i32 %201, %202
  %204 = icmp ne i32 %203, 0
  br i1 %204, label %205, label %217

205:                                              ; preds = %195
  %206 = load %struct.pci_conf*, %struct.pci_conf** %7, align 8
  %207 = getelementptr inbounds %struct.pci_conf, %struct.pci_conf* %206, i32 0, i32 3
  %208 = load i64, i64* %207, align 8
  %209 = load %struct.pci_match_conf*, %struct.pci_match_conf** %5, align 8
  %210 = load i32, i32* %8, align 4
  %211 = sext i32 %210 to i64
  %212 = getelementptr inbounds %struct.pci_match_conf, %struct.pci_match_conf* %209, i64 %211
  %213 = getelementptr inbounds %struct.pci_match_conf, %struct.pci_match_conf* %212, i32 0, i32 4
  %214 = load i64, i64* %213, align 8
  %215 = icmp ne i64 %208, %214
  br i1 %215, label %216, label %217

216:                                              ; preds = %205
  br label %241

217:                                              ; preds = %205, %195
  %218 = load %struct.pci_match_conf*, %struct.pci_match_conf** %5, align 8
  %219 = load i32, i32* %8, align 4
  %220 = sext i32 %219 to i64
  %221 = getelementptr inbounds %struct.pci_match_conf, %struct.pci_match_conf* %218, i64 %220
  %222 = getelementptr inbounds %struct.pci_match_conf, %struct.pci_match_conf* %221, i32 0, i32 0
  %223 = load i32, i32* %222, align 8
  %224 = load i32, i32* @PCI_GETCONF_MATCH_NAME, align 4
  %225 = and i32 %223, %224
  %226 = icmp ne i32 %225, 0
  br i1 %226, label %227, label %240

227:                                              ; preds = %217
  %228 = load %struct.pci_match_conf*, %struct.pci_match_conf** %5, align 8
  %229 = load i32, i32* %8, align 4
  %230 = sext i32 %229 to i64
  %231 = getelementptr inbounds %struct.pci_match_conf, %struct.pci_match_conf* %228, i64 %230
  %232 = getelementptr inbounds %struct.pci_match_conf, %struct.pci_match_conf* %231, i32 0, i32 5
  %233 = load i32, i32* %232, align 8
  %234 = load %struct.pci_conf*, %struct.pci_conf** %7, align 8
  %235 = getelementptr inbounds %struct.pci_conf, %struct.pci_conf* %234, i32 0, i32 4
  %236 = load i32, i32* %235, align 8
  %237 = call i64 @strncmp(i32 %233, i32 %236, i32 4)
  %238 = icmp ne i64 %237, 0
  br i1 %238, label %239, label %240

239:                                              ; preds = %227
  br label %241

240:                                              ; preds = %227, %217
  store i32 0, i32* %4, align 4
  br label %245

241:                                              ; preds = %239, %216, %194, %172, %150, %128, %104, %80, %56, %32
  %242 = load i32, i32* %8, align 4
  %243 = add nsw i32 %242, 1
  store i32 %243, i32* %8, align 4
  br label %19

244:                                              ; preds = %19
  store i32 1, i32* %4, align 4
  br label %245

245:                                              ; preds = %244, %240, %17
  %246 = load i32, i32* %4, align 4
  ret i32 %246
}

declare dso_local i64 @strncmp(i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
