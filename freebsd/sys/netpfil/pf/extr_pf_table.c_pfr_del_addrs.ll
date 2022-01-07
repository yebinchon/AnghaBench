; ModuleID = '/home/carl/AnghaBench/freebsd/sys/netpfil/pf/extr_pf_table.c_pfr_del_addrs.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/netpfil/pf/extr_pf_table.c_pfr_del_addrs.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pfr_table = type { i32 }
%struct.pfr_addr = type { i64, i32 }
%struct.pfr_ktable = type { i32, i32 }
%struct.pfr_kentryworkq = type { i32 }
%struct.pfr_kentry = type { i32, i64 }

@PFR_FLAG_DUMMY = common dso_local global i32 0, align 4
@PFR_FLAG_FEEDBACK = common dso_local global i32 0, align 4
@PFR_FLAG_USERIOCTL = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@PFR_TFLAG_ACTIVE = common dso_local global i32 0, align 4
@ESRCH = common dso_local global i32 0, align 4
@PFR_TFLAG_CONST = common dso_local global i32 0, align 4
@EPERM = common dso_local global i32 0, align 4
@PFR_FB_NONE = common dso_local global i32 0, align 4
@PFR_FB_CONFLICT = common dso_local global i32 0, align 4
@PFR_FB_DUPLICATE = common dso_local global i32 0, align 4
@PFR_FB_DELETED = common dso_local global i32 0, align 4
@pfrke_workq = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @pfr_del_addrs(%struct.pfr_table* %0, %struct.pfr_addr* %1, i32 %2, i32* %3, i32 %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca %struct.pfr_table*, align 8
  %8 = alloca %struct.pfr_addr*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32*, align 8
  %11 = alloca i32, align 4
  %12 = alloca %struct.pfr_ktable*, align 8
  %13 = alloca %struct.pfr_kentryworkq, align 4
  %14 = alloca %struct.pfr_kentry*, align 8
  %15 = alloca %struct.pfr_addr*, align 8
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  %19 = alloca i32, align 4
  store %struct.pfr_table* %0, %struct.pfr_table** %7, align 8
  store %struct.pfr_addr* %1, %struct.pfr_addr** %8, align 8
  store i32 %2, i32* %9, align 4
  store i32* %3, i32** %10, align 8
  store i32 %4, i32* %11, align 4
  store i32 0, i32* %18, align 4
  store i32 1, i32* %19, align 4
  %20 = call i32 (...) @PF_RULES_WASSERT()
  %21 = load i32, i32* %11, align 4
  %22 = load i32, i32* @PFR_FLAG_DUMMY, align 4
  %23 = load i32, i32* @PFR_FLAG_FEEDBACK, align 4
  %24 = or i32 %22, %23
  %25 = call i32 @ACCEPT_FLAGS(i32 %21, i32 %24)
  %26 = load %struct.pfr_table*, %struct.pfr_table** %7, align 8
  %27 = load i32, i32* %11, align 4
  %28 = load i32, i32* @PFR_FLAG_USERIOCTL, align 4
  %29 = and i32 %27, %28
  %30 = call i64 @pfr_validate_table(%struct.pfr_table* %26, i32 0, i32 %29)
  %31 = icmp ne i64 %30, 0
  br i1 %31, label %32, label %34

32:                                               ; preds = %5
  %33 = load i32, i32* @EINVAL, align 4
  store i32 %33, i32* %6, align 4
  br label %222

34:                                               ; preds = %5
  %35 = load %struct.pfr_table*, %struct.pfr_table** %7, align 8
  %36 = call %struct.pfr_ktable* @pfr_lookup_table(%struct.pfr_table* %35)
  store %struct.pfr_ktable* %36, %struct.pfr_ktable** %12, align 8
  %37 = load %struct.pfr_ktable*, %struct.pfr_ktable** %12, align 8
  %38 = icmp eq %struct.pfr_ktable* %37, null
  br i1 %38, label %46, label %39

39:                                               ; preds = %34
  %40 = load %struct.pfr_ktable*, %struct.pfr_ktable** %12, align 8
  %41 = getelementptr inbounds %struct.pfr_ktable, %struct.pfr_ktable* %40, i32 0, i32 0
  %42 = load i32, i32* %41, align 4
  %43 = load i32, i32* @PFR_TFLAG_ACTIVE, align 4
  %44 = and i32 %42, %43
  %45 = icmp ne i32 %44, 0
  br i1 %45, label %48, label %46

46:                                               ; preds = %39, %34
  %47 = load i32, i32* @ESRCH, align 4
  store i32 %47, i32* %6, align 4
  br label %222

48:                                               ; preds = %39
  %49 = load %struct.pfr_ktable*, %struct.pfr_ktable** %12, align 8
  %50 = getelementptr inbounds %struct.pfr_ktable, %struct.pfr_ktable* %49, i32 0, i32 0
  %51 = load i32, i32* %50, align 4
  %52 = load i32, i32* @PFR_TFLAG_CONST, align 4
  %53 = and i32 %51, %52
  %54 = icmp ne i32 %53, 0
  br i1 %54, label %55, label %57

55:                                               ; preds = %48
  %56 = load i32, i32* @EPERM, align 4
  store i32 %56, i32* %6, align 4
  br label %222

57:                                               ; preds = %48
  %58 = load %struct.pfr_ktable*, %struct.pfr_ktable** %12, align 8
  %59 = getelementptr inbounds %struct.pfr_ktable, %struct.pfr_ktable* %58, i32 0, i32 1
  %60 = load i32, i32* %59, align 4
  store i32 %60, i32* %16, align 4
  br label %61

61:                                               ; preds = %67, %57
  %62 = load i32, i32* %16, align 4
  %63 = icmp sgt i32 %62, 0
  br i1 %63, label %64, label %70

64:                                               ; preds = %61
  %65 = load i32, i32* %19, align 4
  %66 = add nsw i32 %65, 1
  store i32 %66, i32* %19, align 4
  br label %67

67:                                               ; preds = %64
  %68 = load i32, i32* %16, align 4
  %69 = ashr i32 %68, 1
  store i32 %69, i32* %16, align 4
  br label %61

70:                                               ; preds = %61
  %71 = load i32, i32* %9, align 4
  %72 = load %struct.pfr_ktable*, %struct.pfr_ktable** %12, align 8
  %73 = getelementptr inbounds %struct.pfr_ktable, %struct.pfr_ktable* %72, i32 0, i32 1
  %74 = load i32, i32* %73, align 4
  %75 = load i32, i32* %19, align 4
  %76 = sdiv i32 %74, %75
  %77 = icmp sgt i32 %71, %76
  br i1 %77, label %78, label %81

78:                                               ; preds = %70
  %79 = load %struct.pfr_ktable*, %struct.pfr_ktable** %12, align 8
  %80 = call i32 @pfr_mark_addrs(%struct.pfr_ktable* %79)
  br label %109

81:                                               ; preds = %70
  store i32 0, i32* %16, align 4
  %82 = load %struct.pfr_addr*, %struct.pfr_addr** %8, align 8
  store %struct.pfr_addr* %82, %struct.pfr_addr** %15, align 8
  br label %83

83:                                               ; preds = %103, %81
  %84 = load i32, i32* %16, align 4
  %85 = load i32, i32* %9, align 4
  %86 = icmp slt i32 %84, %85
  br i1 %86, label %87, label %108

87:                                               ; preds = %83
  %88 = load %struct.pfr_addr*, %struct.pfr_addr** %15, align 8
  %89 = call i64 @pfr_validate_addr(%struct.pfr_addr* %88)
  %90 = icmp ne i64 %89, 0
  br i1 %90, label %91, label %93

91:                                               ; preds = %87
  %92 = load i32, i32* @EINVAL, align 4
  store i32 %92, i32* %6, align 4
  br label %222

93:                                               ; preds = %87
  %94 = load %struct.pfr_ktable*, %struct.pfr_ktable** %12, align 8
  %95 = load %struct.pfr_addr*, %struct.pfr_addr** %15, align 8
  %96 = call %struct.pfr_kentry* @pfr_lookup_addr(%struct.pfr_ktable* %94, %struct.pfr_addr* %95, i32 1)
  store %struct.pfr_kentry* %96, %struct.pfr_kentry** %14, align 8
  %97 = load %struct.pfr_kentry*, %struct.pfr_kentry** %14, align 8
  %98 = icmp ne %struct.pfr_kentry* %97, null
  br i1 %98, label %99, label %102

99:                                               ; preds = %93
  %100 = load %struct.pfr_kentry*, %struct.pfr_kentry** %14, align 8
  %101 = getelementptr inbounds %struct.pfr_kentry, %struct.pfr_kentry* %100, i32 0, i32 0
  store i32 0, i32* %101, align 8
  br label %102

102:                                              ; preds = %99, %93
  br label %103

103:                                              ; preds = %102
  %104 = load i32, i32* %16, align 4
  %105 = add nsw i32 %104, 1
  store i32 %105, i32* %16, align 4
  %106 = load %struct.pfr_addr*, %struct.pfr_addr** %15, align 8
  %107 = getelementptr inbounds %struct.pfr_addr, %struct.pfr_addr* %106, i32 1
  store %struct.pfr_addr* %107, %struct.pfr_addr** %15, align 8
  br label %83

108:                                              ; preds = %83
  br label %109

109:                                              ; preds = %108, %78
  %110 = call i32 @SLIST_INIT(%struct.pfr_kentryworkq* %13)
  store i32 0, i32* %16, align 4
  %111 = load %struct.pfr_addr*, %struct.pfr_addr** %8, align 8
  store %struct.pfr_addr* %111, %struct.pfr_addr** %15, align 8
  br label %112

112:                                              ; preds = %191, %109
  %113 = load i32, i32* %16, align 4
  %114 = load i32, i32* %9, align 4
  %115 = icmp slt i32 %113, %114
  br i1 %115, label %116, label %196

116:                                              ; preds = %112
  %117 = load %struct.pfr_addr*, %struct.pfr_addr** %15, align 8
  %118 = call i64 @pfr_validate_addr(%struct.pfr_addr* %117)
  %119 = icmp ne i64 %118, 0
  br i1 %119, label %120, label %123

120:                                              ; preds = %116
  %121 = load i32, i32* @EINVAL, align 4
  %122 = call i32 @senderr(i32 %121)
  br label %123

123:                                              ; preds = %120, %116
  %124 = load %struct.pfr_ktable*, %struct.pfr_ktable** %12, align 8
  %125 = load %struct.pfr_addr*, %struct.pfr_addr** %15, align 8
  %126 = call %struct.pfr_kentry* @pfr_lookup_addr(%struct.pfr_ktable* %124, %struct.pfr_addr* %125, i32 1)
  store %struct.pfr_kentry* %126, %struct.pfr_kentry** %14, align 8
  %127 = load i32, i32* %11, align 4
  %128 = load i32, i32* @PFR_FLAG_FEEDBACK, align 4
  %129 = and i32 %127, %128
  %130 = icmp ne i32 %129, 0
  br i1 %130, label %131, label %166

131:                                              ; preds = %123
  %132 = load %struct.pfr_kentry*, %struct.pfr_kentry** %14, align 8
  %133 = icmp eq %struct.pfr_kentry* %132, null
  br i1 %133, label %134, label %138

134:                                              ; preds = %131
  %135 = load i32, i32* @PFR_FB_NONE, align 4
  %136 = load %struct.pfr_addr*, %struct.pfr_addr** %15, align 8
  %137 = getelementptr inbounds %struct.pfr_addr, %struct.pfr_addr* %136, i32 0, i32 1
  store i32 %135, i32* %137, align 8
  br label %165

138:                                              ; preds = %131
  %139 = load %struct.pfr_kentry*, %struct.pfr_kentry** %14, align 8
  %140 = getelementptr inbounds %struct.pfr_kentry, %struct.pfr_kentry* %139, i32 0, i32 1
  %141 = load i64, i64* %140, align 8
  %142 = load %struct.pfr_addr*, %struct.pfr_addr** %15, align 8
  %143 = getelementptr inbounds %struct.pfr_addr, %struct.pfr_addr* %142, i32 0, i32 0
  %144 = load i64, i64* %143, align 8
  %145 = icmp ne i64 %141, %144
  br i1 %145, label %146, label %150

146:                                              ; preds = %138
  %147 = load i32, i32* @PFR_FB_CONFLICT, align 4
  %148 = load %struct.pfr_addr*, %struct.pfr_addr** %15, align 8
  %149 = getelementptr inbounds %struct.pfr_addr, %struct.pfr_addr* %148, i32 0, i32 1
  store i32 %147, i32* %149, align 8
  br label %164

150:                                              ; preds = %138
  %151 = load %struct.pfr_kentry*, %struct.pfr_kentry** %14, align 8
  %152 = getelementptr inbounds %struct.pfr_kentry, %struct.pfr_kentry* %151, i32 0, i32 0
  %153 = load i32, i32* %152, align 8
  %154 = icmp ne i32 %153, 0
  br i1 %154, label %155, label %159

155:                                              ; preds = %150
  %156 = load i32, i32* @PFR_FB_DUPLICATE, align 4
  %157 = load %struct.pfr_addr*, %struct.pfr_addr** %15, align 8
  %158 = getelementptr inbounds %struct.pfr_addr, %struct.pfr_addr* %157, i32 0, i32 1
  store i32 %156, i32* %158, align 8
  br label %163

159:                                              ; preds = %150
  %160 = load i32, i32* @PFR_FB_DELETED, align 4
  %161 = load %struct.pfr_addr*, %struct.pfr_addr** %15, align 8
  %162 = getelementptr inbounds %struct.pfr_addr, %struct.pfr_addr* %161, i32 0, i32 1
  store i32 %160, i32* %162, align 8
  br label %163

163:                                              ; preds = %159, %155
  br label %164

164:                                              ; preds = %163, %146
  br label %165

165:                                              ; preds = %164, %134
  br label %166

166:                                              ; preds = %165, %123
  %167 = load %struct.pfr_kentry*, %struct.pfr_kentry** %14, align 8
  %168 = icmp ne %struct.pfr_kentry* %167, null
  br i1 %168, label %169, label %190

169:                                              ; preds = %166
  %170 = load %struct.pfr_kentry*, %struct.pfr_kentry** %14, align 8
  %171 = getelementptr inbounds %struct.pfr_kentry, %struct.pfr_kentry* %170, i32 0, i32 1
  %172 = load i64, i64* %171, align 8
  %173 = load %struct.pfr_addr*, %struct.pfr_addr** %15, align 8
  %174 = getelementptr inbounds %struct.pfr_addr, %struct.pfr_addr* %173, i32 0, i32 0
  %175 = load i64, i64* %174, align 8
  %176 = icmp eq i64 %172, %175
  br i1 %176, label %177, label %190

177:                                              ; preds = %169
  %178 = load %struct.pfr_kentry*, %struct.pfr_kentry** %14, align 8
  %179 = getelementptr inbounds %struct.pfr_kentry, %struct.pfr_kentry* %178, i32 0, i32 0
  %180 = load i32, i32* %179, align 8
  %181 = icmp ne i32 %180, 0
  br i1 %181, label %190, label %182

182:                                              ; preds = %177
  %183 = load %struct.pfr_kentry*, %struct.pfr_kentry** %14, align 8
  %184 = getelementptr inbounds %struct.pfr_kentry, %struct.pfr_kentry* %183, i32 0, i32 0
  store i32 1, i32* %184, align 8
  %185 = load %struct.pfr_kentry*, %struct.pfr_kentry** %14, align 8
  %186 = load i32, i32* @pfrke_workq, align 4
  %187 = call i32 @SLIST_INSERT_HEAD(%struct.pfr_kentryworkq* %13, %struct.pfr_kentry* %185, i32 %186)
  %188 = load i32, i32* %18, align 4
  %189 = add nsw i32 %188, 1
  store i32 %189, i32* %18, align 4
  br label %190

190:                                              ; preds = %182, %177, %169, %166
  br label %191

191:                                              ; preds = %190
  %192 = load i32, i32* %16, align 4
  %193 = add nsw i32 %192, 1
  store i32 %193, i32* %16, align 4
  %194 = load %struct.pfr_addr*, %struct.pfr_addr** %15, align 8
  %195 = getelementptr inbounds %struct.pfr_addr, %struct.pfr_addr* %194, i32 1
  store %struct.pfr_addr* %195, %struct.pfr_addr** %15, align 8
  br label %112

196:                                              ; preds = %112
  %197 = load i32, i32* %11, align 4
  %198 = load i32, i32* @PFR_FLAG_DUMMY, align 4
  %199 = and i32 %197, %198
  %200 = icmp ne i32 %199, 0
  br i1 %200, label %204, label %201

201:                                              ; preds = %196
  %202 = load %struct.pfr_ktable*, %struct.pfr_ktable** %12, align 8
  %203 = call i32 @pfr_remove_kentries(%struct.pfr_ktable* %202, %struct.pfr_kentryworkq* %13)
  br label %204

204:                                              ; preds = %201, %196
  %205 = load i32*, i32** %10, align 8
  %206 = icmp ne i32* %205, null
  br i1 %206, label %207, label %210

207:                                              ; preds = %204
  %208 = load i32, i32* %18, align 4
  %209 = load i32*, i32** %10, align 8
  store i32 %208, i32* %209, align 4
  br label %210

210:                                              ; preds = %207, %204
  store i32 0, i32* %6, align 4
  br label %222

211:                                              ; No predecessors!
  %212 = load i32, i32* %11, align 4
  %213 = load i32, i32* @PFR_FLAG_FEEDBACK, align 4
  %214 = and i32 %212, %213
  %215 = icmp ne i32 %214, 0
  br i1 %215, label %216, label %220

216:                                              ; preds = %211
  %217 = load %struct.pfr_addr*, %struct.pfr_addr** %8, align 8
  %218 = load i32, i32* %9, align 4
  %219 = call i32 @pfr_reset_feedback(%struct.pfr_addr* %217, i32 %218)
  br label %220

220:                                              ; preds = %216, %211
  %221 = load i32, i32* %17, align 4
  store i32 %221, i32* %6, align 4
  br label %222

222:                                              ; preds = %220, %210, %91, %55, %46, %32
  %223 = load i32, i32* %6, align 4
  ret i32 %223
}

declare dso_local i32 @PF_RULES_WASSERT(...) #1

declare dso_local i32 @ACCEPT_FLAGS(i32, i32) #1

declare dso_local i64 @pfr_validate_table(%struct.pfr_table*, i32, i32) #1

declare dso_local %struct.pfr_ktable* @pfr_lookup_table(%struct.pfr_table*) #1

declare dso_local i32 @pfr_mark_addrs(%struct.pfr_ktable*) #1

declare dso_local i64 @pfr_validate_addr(%struct.pfr_addr*) #1

declare dso_local %struct.pfr_kentry* @pfr_lookup_addr(%struct.pfr_ktable*, %struct.pfr_addr*, i32) #1

declare dso_local i32 @SLIST_INIT(%struct.pfr_kentryworkq*) #1

declare dso_local i32 @senderr(i32) #1

declare dso_local i32 @SLIST_INSERT_HEAD(%struct.pfr_kentryworkq*, %struct.pfr_kentry*, i32) #1

declare dso_local i32 @pfr_remove_kentries(%struct.pfr_ktable*, %struct.pfr_kentryworkq*) #1

declare dso_local i32 @pfr_reset_feedback(%struct.pfr_addr*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
