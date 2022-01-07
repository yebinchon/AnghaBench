; ModuleID = '/home/carl/AnghaBench/freebsd/usr.sbin/ppp/extr_filter.c_filter_AdjustAddr.c'
source_filename = "/home/carl/AnghaBench/freebsd/usr.sbin/ppp/extr_filter.c_filter_AdjustAddr.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.filter = type { %struct.filterent* }
%struct.filterent = type { i64, i64, i64, i32, i32 }
%struct.ncpaddr = type { i32 }
%struct.in_addr = type { i32 }

@MAXFILTERS = common dso_local global i32 0, align 4
@A_NONE = common dso_local global i64 0, align 8
@T_MYADDR = common dso_local global i64 0, align 8
@AF_INET = common dso_local global i64 0, align 8
@T_MYADDR6 = common dso_local global i64 0, align 8
@AF_INET6 = common dso_local global i64 0, align 8
@T_HISADDR = common dso_local global i64 0, align 8
@T_HISADDR6 = common dso_local global i64 0, align 8
@T_DNS0 = common dso_local global i64 0, align 8
@T_DNS1 = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @filter_AdjustAddr(%struct.filter* %0, %struct.ncpaddr* %1, %struct.ncpaddr* %2, %struct.in_addr* %3) #0 {
  %5 = alloca %struct.filter*, align 8
  %6 = alloca %struct.ncpaddr*, align 8
  %7 = alloca %struct.ncpaddr*, align 8
  %8 = alloca %struct.in_addr*, align 8
  %9 = alloca %struct.filterent*, align 8
  %10 = alloca i32, align 4
  store %struct.filter* %0, %struct.filter** %5, align 8
  store %struct.ncpaddr* %1, %struct.ncpaddr** %6, align 8
  store %struct.ncpaddr* %2, %struct.ncpaddr** %7, align 8
  store %struct.in_addr* %3, %struct.in_addr** %8, align 8
  %11 = load %struct.filter*, %struct.filter** %5, align 8
  %12 = getelementptr inbounds %struct.filter, %struct.filter* %11, i32 0, i32 0
  %13 = load %struct.filterent*, %struct.filterent** %12, align 8
  store %struct.filterent* %13, %struct.filterent** %9, align 8
  store i32 0, i32* %10, align 4
  br label %14

14:                                               ; preds = %222, %4
  %15 = load i32, i32* %10, align 4
  %16 = load i32, i32* @MAXFILTERS, align 4
  %17 = icmp slt i32 %15, %16
  br i1 %17, label %18, label %227

18:                                               ; preds = %14
  %19 = load %struct.filterent*, %struct.filterent** %9, align 8
  %20 = getelementptr inbounds %struct.filterent, %struct.filterent* %19, i32 0, i32 0
  %21 = load i64, i64* %20, align 8
  %22 = load i64, i64* @A_NONE, align 8
  %23 = icmp ne i64 %21, %22
  br i1 %23, label %24, label %221

24:                                               ; preds = %18
  %25 = load %struct.ncpaddr*, %struct.ncpaddr** %6, align 8
  %26 = icmp ne %struct.ncpaddr* %25, null
  br i1 %26, label %27, label %92

27:                                               ; preds = %24
  %28 = load %struct.filterent*, %struct.filterent** %9, align 8
  %29 = getelementptr inbounds %struct.filterent, %struct.filterent* %28, i32 0, i32 1
  %30 = load i64, i64* %29, align 8
  %31 = load i64, i64* @T_MYADDR, align 8
  %32 = icmp eq i64 %30, %31
  br i1 %32, label %33, label %43

33:                                               ; preds = %27
  %34 = load %struct.ncpaddr*, %struct.ncpaddr** %6, align 8
  %35 = call i64 @ncpaddr_family(%struct.ncpaddr* %34)
  %36 = load i64, i64* @AF_INET, align 8
  %37 = icmp eq i64 %35, %36
  br i1 %37, label %38, label %43

38:                                               ; preds = %33
  %39 = load %struct.filterent*, %struct.filterent** %9, align 8
  %40 = getelementptr inbounds %struct.filterent, %struct.filterent* %39, i32 0, i32 4
  %41 = load %struct.ncpaddr*, %struct.ncpaddr** %6, align 8
  %42 = call i32 @ncprange_sethost(i32* %40, %struct.ncpaddr* %41)
  br label %43

43:                                               ; preds = %38, %33, %27
  %44 = load %struct.filterent*, %struct.filterent** %9, align 8
  %45 = getelementptr inbounds %struct.filterent, %struct.filterent* %44, i32 0, i32 2
  %46 = load i64, i64* %45, align 8
  %47 = load i64, i64* @T_MYADDR, align 8
  %48 = icmp eq i64 %46, %47
  br i1 %48, label %49, label %59

49:                                               ; preds = %43
  %50 = load %struct.ncpaddr*, %struct.ncpaddr** %6, align 8
  %51 = call i64 @ncpaddr_family(%struct.ncpaddr* %50)
  %52 = load i64, i64* @AF_INET, align 8
  %53 = icmp eq i64 %51, %52
  br i1 %53, label %54, label %59

54:                                               ; preds = %49
  %55 = load %struct.filterent*, %struct.filterent** %9, align 8
  %56 = getelementptr inbounds %struct.filterent, %struct.filterent* %55, i32 0, i32 3
  %57 = load %struct.ncpaddr*, %struct.ncpaddr** %6, align 8
  %58 = call i32 @ncprange_sethost(i32* %56, %struct.ncpaddr* %57)
  br label %59

59:                                               ; preds = %54, %49, %43
  %60 = load %struct.filterent*, %struct.filterent** %9, align 8
  %61 = getelementptr inbounds %struct.filterent, %struct.filterent* %60, i32 0, i32 1
  %62 = load i64, i64* %61, align 8
  %63 = load i64, i64* @T_MYADDR6, align 8
  %64 = icmp eq i64 %62, %63
  br i1 %64, label %65, label %75

65:                                               ; preds = %59
  %66 = load %struct.ncpaddr*, %struct.ncpaddr** %6, align 8
  %67 = call i64 @ncpaddr_family(%struct.ncpaddr* %66)
  %68 = load i64, i64* @AF_INET6, align 8
  %69 = icmp eq i64 %67, %68
  br i1 %69, label %70, label %75

70:                                               ; preds = %65
  %71 = load %struct.filterent*, %struct.filterent** %9, align 8
  %72 = getelementptr inbounds %struct.filterent, %struct.filterent* %71, i32 0, i32 4
  %73 = load %struct.ncpaddr*, %struct.ncpaddr** %6, align 8
  %74 = call i32 @ncprange_sethost(i32* %72, %struct.ncpaddr* %73)
  br label %75

75:                                               ; preds = %70, %65, %59
  %76 = load %struct.filterent*, %struct.filterent** %9, align 8
  %77 = getelementptr inbounds %struct.filterent, %struct.filterent* %76, i32 0, i32 2
  %78 = load i64, i64* %77, align 8
  %79 = load i64, i64* @T_MYADDR6, align 8
  %80 = icmp eq i64 %78, %79
  br i1 %80, label %81, label %91

81:                                               ; preds = %75
  %82 = load %struct.ncpaddr*, %struct.ncpaddr** %6, align 8
  %83 = call i64 @ncpaddr_family(%struct.ncpaddr* %82)
  %84 = load i64, i64* @AF_INET6, align 8
  %85 = icmp eq i64 %83, %84
  br i1 %85, label %86, label %91

86:                                               ; preds = %81
  %87 = load %struct.filterent*, %struct.filterent** %9, align 8
  %88 = getelementptr inbounds %struct.filterent, %struct.filterent* %87, i32 0, i32 3
  %89 = load %struct.ncpaddr*, %struct.ncpaddr** %6, align 8
  %90 = call i32 @ncprange_sethost(i32* %88, %struct.ncpaddr* %89)
  br label %91

91:                                               ; preds = %86, %81, %75
  br label %92

92:                                               ; preds = %91, %24
  %93 = load %struct.ncpaddr*, %struct.ncpaddr** %7, align 8
  %94 = icmp ne %struct.ncpaddr* %93, null
  br i1 %94, label %95, label %160

95:                                               ; preds = %92
  %96 = load %struct.filterent*, %struct.filterent** %9, align 8
  %97 = getelementptr inbounds %struct.filterent, %struct.filterent* %96, i32 0, i32 1
  %98 = load i64, i64* %97, align 8
  %99 = load i64, i64* @T_HISADDR, align 8
  %100 = icmp eq i64 %98, %99
  br i1 %100, label %101, label %111

101:                                              ; preds = %95
  %102 = load %struct.ncpaddr*, %struct.ncpaddr** %7, align 8
  %103 = call i64 @ncpaddr_family(%struct.ncpaddr* %102)
  %104 = load i64, i64* @AF_INET, align 8
  %105 = icmp eq i64 %103, %104
  br i1 %105, label %106, label %111

106:                                              ; preds = %101
  %107 = load %struct.filterent*, %struct.filterent** %9, align 8
  %108 = getelementptr inbounds %struct.filterent, %struct.filterent* %107, i32 0, i32 4
  %109 = load %struct.ncpaddr*, %struct.ncpaddr** %7, align 8
  %110 = call i32 @ncprange_sethost(i32* %108, %struct.ncpaddr* %109)
  br label %111

111:                                              ; preds = %106, %101, %95
  %112 = load %struct.filterent*, %struct.filterent** %9, align 8
  %113 = getelementptr inbounds %struct.filterent, %struct.filterent* %112, i32 0, i32 2
  %114 = load i64, i64* %113, align 8
  %115 = load i64, i64* @T_HISADDR, align 8
  %116 = icmp eq i64 %114, %115
  br i1 %116, label %117, label %127

117:                                              ; preds = %111
  %118 = load %struct.ncpaddr*, %struct.ncpaddr** %7, align 8
  %119 = call i64 @ncpaddr_family(%struct.ncpaddr* %118)
  %120 = load i64, i64* @AF_INET, align 8
  %121 = icmp eq i64 %119, %120
  br i1 %121, label %122, label %127

122:                                              ; preds = %117
  %123 = load %struct.filterent*, %struct.filterent** %9, align 8
  %124 = getelementptr inbounds %struct.filterent, %struct.filterent* %123, i32 0, i32 3
  %125 = load %struct.ncpaddr*, %struct.ncpaddr** %7, align 8
  %126 = call i32 @ncprange_sethost(i32* %124, %struct.ncpaddr* %125)
  br label %127

127:                                              ; preds = %122, %117, %111
  %128 = load %struct.filterent*, %struct.filterent** %9, align 8
  %129 = getelementptr inbounds %struct.filterent, %struct.filterent* %128, i32 0, i32 1
  %130 = load i64, i64* %129, align 8
  %131 = load i64, i64* @T_HISADDR6, align 8
  %132 = icmp eq i64 %130, %131
  br i1 %132, label %133, label %143

133:                                              ; preds = %127
  %134 = load %struct.ncpaddr*, %struct.ncpaddr** %7, align 8
  %135 = call i64 @ncpaddr_family(%struct.ncpaddr* %134)
  %136 = load i64, i64* @AF_INET6, align 8
  %137 = icmp eq i64 %135, %136
  br i1 %137, label %138, label %143

138:                                              ; preds = %133
  %139 = load %struct.filterent*, %struct.filterent** %9, align 8
  %140 = getelementptr inbounds %struct.filterent, %struct.filterent* %139, i32 0, i32 4
  %141 = load %struct.ncpaddr*, %struct.ncpaddr** %7, align 8
  %142 = call i32 @ncprange_sethost(i32* %140, %struct.ncpaddr* %141)
  br label %143

143:                                              ; preds = %138, %133, %127
  %144 = load %struct.filterent*, %struct.filterent** %9, align 8
  %145 = getelementptr inbounds %struct.filterent, %struct.filterent* %144, i32 0, i32 2
  %146 = load i64, i64* %145, align 8
  %147 = load i64, i64* @T_HISADDR6, align 8
  %148 = icmp eq i64 %146, %147
  br i1 %148, label %149, label %159

149:                                              ; preds = %143
  %150 = load %struct.ncpaddr*, %struct.ncpaddr** %7, align 8
  %151 = call i64 @ncpaddr_family(%struct.ncpaddr* %150)
  %152 = load i64, i64* @AF_INET6, align 8
  %153 = icmp eq i64 %151, %152
  br i1 %153, label %154, label %159

154:                                              ; preds = %149
  %155 = load %struct.filterent*, %struct.filterent** %9, align 8
  %156 = getelementptr inbounds %struct.filterent, %struct.filterent* %155, i32 0, i32 3
  %157 = load %struct.ncpaddr*, %struct.ncpaddr** %7, align 8
  %158 = call i32 @ncprange_sethost(i32* %156, %struct.ncpaddr* %157)
  br label %159

159:                                              ; preds = %154, %149, %143
  br label %160

160:                                              ; preds = %159, %92
  %161 = load %struct.in_addr*, %struct.in_addr** %8, align 8
  %162 = icmp ne %struct.in_addr* %161, null
  br i1 %162, label %163, label %220

163:                                              ; preds = %160
  %164 = load %struct.filterent*, %struct.filterent** %9, align 8
  %165 = getelementptr inbounds %struct.filterent, %struct.filterent* %164, i32 0, i32 1
  %166 = load i64, i64* %165, align 8
  %167 = load i64, i64* @T_DNS0, align 8
  %168 = icmp eq i64 %166, %167
  br i1 %168, label %169, label %177

169:                                              ; preds = %163
  %170 = load %struct.filterent*, %struct.filterent** %9, align 8
  %171 = getelementptr inbounds %struct.filterent, %struct.filterent* %170, i32 0, i32 4
  %172 = load %struct.in_addr*, %struct.in_addr** %8, align 8
  %173 = getelementptr inbounds %struct.in_addr, %struct.in_addr* %172, i64 0
  %174 = getelementptr inbounds %struct.in_addr, %struct.in_addr* %173, i32 0, i32 0
  %175 = load i32, i32* %174, align 4
  %176 = call i32 @ncprange_setip4host(i32* %171, i32 %175)
  br label %177

177:                                              ; preds = %169, %163
  %178 = load %struct.filterent*, %struct.filterent** %9, align 8
  %179 = getelementptr inbounds %struct.filterent, %struct.filterent* %178, i32 0, i32 2
  %180 = load i64, i64* %179, align 8
  %181 = load i64, i64* @T_DNS0, align 8
  %182 = icmp eq i64 %180, %181
  br i1 %182, label %183, label %191

183:                                              ; preds = %177
  %184 = load %struct.filterent*, %struct.filterent** %9, align 8
  %185 = getelementptr inbounds %struct.filterent, %struct.filterent* %184, i32 0, i32 3
  %186 = load %struct.in_addr*, %struct.in_addr** %8, align 8
  %187 = getelementptr inbounds %struct.in_addr, %struct.in_addr* %186, i64 0
  %188 = getelementptr inbounds %struct.in_addr, %struct.in_addr* %187, i32 0, i32 0
  %189 = load i32, i32* %188, align 4
  %190 = call i32 @ncprange_setip4host(i32* %185, i32 %189)
  br label %191

191:                                              ; preds = %183, %177
  %192 = load %struct.filterent*, %struct.filterent** %9, align 8
  %193 = getelementptr inbounds %struct.filterent, %struct.filterent* %192, i32 0, i32 1
  %194 = load i64, i64* %193, align 8
  %195 = load i64, i64* @T_DNS1, align 8
  %196 = icmp eq i64 %194, %195
  br i1 %196, label %197, label %205

197:                                              ; preds = %191
  %198 = load %struct.filterent*, %struct.filterent** %9, align 8
  %199 = getelementptr inbounds %struct.filterent, %struct.filterent* %198, i32 0, i32 4
  %200 = load %struct.in_addr*, %struct.in_addr** %8, align 8
  %201 = getelementptr inbounds %struct.in_addr, %struct.in_addr* %200, i64 1
  %202 = getelementptr inbounds %struct.in_addr, %struct.in_addr* %201, i32 0, i32 0
  %203 = load i32, i32* %202, align 4
  %204 = call i32 @ncprange_setip4host(i32* %199, i32 %203)
  br label %205

205:                                              ; preds = %197, %191
  %206 = load %struct.filterent*, %struct.filterent** %9, align 8
  %207 = getelementptr inbounds %struct.filterent, %struct.filterent* %206, i32 0, i32 2
  %208 = load i64, i64* %207, align 8
  %209 = load i64, i64* @T_DNS1, align 8
  %210 = icmp eq i64 %208, %209
  br i1 %210, label %211, label %219

211:                                              ; preds = %205
  %212 = load %struct.filterent*, %struct.filterent** %9, align 8
  %213 = getelementptr inbounds %struct.filterent, %struct.filterent* %212, i32 0, i32 3
  %214 = load %struct.in_addr*, %struct.in_addr** %8, align 8
  %215 = getelementptr inbounds %struct.in_addr, %struct.in_addr* %214, i64 1
  %216 = getelementptr inbounds %struct.in_addr, %struct.in_addr* %215, i32 0, i32 0
  %217 = load i32, i32* %216, align 4
  %218 = call i32 @ncprange_setip4host(i32* %213, i32 %217)
  br label %219

219:                                              ; preds = %211, %205
  br label %220

220:                                              ; preds = %219, %160
  br label %221

221:                                              ; preds = %220, %18
  br label %222

222:                                              ; preds = %221
  %223 = load %struct.filterent*, %struct.filterent** %9, align 8
  %224 = getelementptr inbounds %struct.filterent, %struct.filterent* %223, i32 1
  store %struct.filterent* %224, %struct.filterent** %9, align 8
  %225 = load i32, i32* %10, align 4
  %226 = add nsw i32 %225, 1
  store i32 %226, i32* %10, align 4
  br label %14

227:                                              ; preds = %14
  ret void
}

declare dso_local i64 @ncpaddr_family(%struct.ncpaddr*) #1

declare dso_local i32 @ncprange_sethost(i32*, %struct.ncpaddr*) #1

declare dso_local i32 @ncprange_setip4host(i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
