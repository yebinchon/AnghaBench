; ModuleID = '/home/carl/AnghaBench/freebsd/sys/ofed/drivers/infiniband/core/extr_ib_smi.c___smi_handle_dr_smp_recv.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/ofed/drivers/infiniband/core/extr_ib_smi.c___smi_handle_dr_smp_recv.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@IB_SMP_MAX_PATH_HOPS = common dso_local global i64 0, align 8
@IB_SMI_DISCARD = common dso_local global i32 0, align 4
@IB_SMI_HANDLE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i32, i32, i64*, i64, i64*, i64*, i64, i32, i32)* @__smi_handle_dr_smp_recv to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @__smi_handle_dr_smp_recv(i32 %0, i32 %1, i32 %2, i64* %3, i64 %4, i64* %5, i64* %6, i64 %7, i32 %8, i32 %9) #0 {
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i64*, align 8
  %16 = alloca i64, align 8
  %17 = alloca i64*, align 8
  %18 = alloca i64*, align 8
  %19 = alloca i64, align 8
  %20 = alloca i32, align 4
  %21 = alloca i32, align 4
  store i32 %0, i32* %12, align 4
  store i32 %1, i32* %13, align 4
  store i32 %2, i32* %14, align 4
  store i64* %3, i64** %15, align 8
  store i64 %4, i64* %16, align 8
  store i64* %5, i64** %17, align 8
  store i64* %6, i64** %18, align 8
  store i64 %7, i64* %19, align 8
  store i32 %8, i32* %20, align 4
  store i32 %9, i32* %21, align 4
  %22 = load i64, i64* %16, align 8
  %23 = load i64, i64* @IB_SMP_MAX_PATH_HOPS, align 8
  %24 = icmp uge i64 %22, %23
  br i1 %24, label %25, label %27

25:                                               ; preds = %10
  %26 = load i32, i32* @IB_SMI_DISCARD, align 4
  store i32 %26, i32* %11, align 4
  br label %202

27:                                               ; preds = %10
  %28 = load i64, i64* %19, align 8
  %29 = icmp ne i64 %28, 0
  br i1 %29, label %114, label %30

30:                                               ; preds = %27
  %31 = load i64, i64* %16, align 8
  %32 = icmp ne i64 %31, 0
  br i1 %32, label %33, label %39

33:                                               ; preds = %30
  %34 = load i64*, i64** %15, align 8
  %35 = load i64, i64* %34, align 8
  %36 = icmp eq i64 %35, 0
  br i1 %36, label %37, label %39

37:                                               ; preds = %33
  %38 = load i32, i32* @IB_SMI_DISCARD, align 4
  store i32 %38, i32* %11, align 4
  br label %202

39:                                               ; preds = %33, %30
  %40 = load i64*, i64** %15, align 8
  %41 = load i64, i64* %40, align 8
  %42 = icmp ne i64 %41, 0
  br i1 %42, label %43, label %75

43:                                               ; preds = %39
  %44 = load i64*, i64** %15, align 8
  %45 = load i64, i64* %44, align 8
  %46 = load i64, i64* %16, align 8
  %47 = icmp ult i64 %45, %46
  br i1 %47, label %48, label %75

48:                                               ; preds = %43
  %49 = load i32, i32* %12, align 4
  %50 = icmp ne i32 %49, 0
  br i1 %50, label %53, label %51

51:                                               ; preds = %48
  %52 = load i32, i32* @IB_SMI_DISCARD, align 4
  store i32 %52, i32* %11, align 4
  br label %202

53:                                               ; preds = %48
  %54 = load i32, i32* %13, align 4
  %55 = sext i32 %54 to i64
  %56 = load i64*, i64** %18, align 8
  %57 = load i64*, i64** %15, align 8
  %58 = load i64, i64* %57, align 8
  %59 = getelementptr inbounds i64, i64* %56, i64 %58
  store i64 %55, i64* %59, align 8
  %60 = load i64*, i64** %17, align 8
  %61 = load i64*, i64** %15, align 8
  %62 = load i64, i64* %61, align 8
  %63 = add i64 %62, 1
  %64 = getelementptr inbounds i64, i64* %60, i64 %63
  %65 = load i64, i64* %64, align 8
  %66 = load i32, i32* %14, align 4
  %67 = sext i32 %66 to i64
  %68 = icmp ule i64 %65, %67
  br i1 %68, label %69, label %71

69:                                               ; preds = %53
  %70 = load i32, i32* @IB_SMI_HANDLE, align 4
  br label %73

71:                                               ; preds = %53
  %72 = load i32, i32* @IB_SMI_DISCARD, align 4
  br label %73

73:                                               ; preds = %71, %69
  %74 = phi i32 [ %70, %69 ], [ %72, %71 ]
  store i32 %74, i32* %11, align 4
  br label %202

75:                                               ; preds = %43, %39
  %76 = load i64*, i64** %15, align 8
  %77 = load i64, i64* %76, align 8
  %78 = load i64, i64* %16, align 8
  %79 = icmp eq i64 %77, %78
  br i1 %79, label %80, label %102

80:                                               ; preds = %75
  %81 = load i64, i64* %16, align 8
  %82 = icmp ne i64 %81, 0
  br i1 %82, label %83, label %90

83:                                               ; preds = %80
  %84 = load i32, i32* %13, align 4
  %85 = sext i32 %84 to i64
  %86 = load i64*, i64** %18, align 8
  %87 = load i64*, i64** %15, align 8
  %88 = load i64, i64* %87, align 8
  %89 = getelementptr inbounds i64, i64* %86, i64 %88
  store i64 %85, i64* %89, align 8
  br label %90

90:                                               ; preds = %83, %80
  %91 = load i32, i32* %12, align 4
  %92 = icmp ne i32 %91, 0
  br i1 %92, label %96, label %93

93:                                               ; preds = %90
  %94 = load i32, i32* %20, align 4
  %95 = icmp ne i32 %94, 0
  br i1 %95, label %96, label %98

96:                                               ; preds = %93, %90
  %97 = load i32, i32* @IB_SMI_HANDLE, align 4
  br label %100

98:                                               ; preds = %93
  %99 = load i32, i32* @IB_SMI_DISCARD, align 4
  br label %100

100:                                              ; preds = %98, %96
  %101 = phi i32 [ %97, %96 ], [ %99, %98 ]
  store i32 %101, i32* %11, align 4
  br label %202

102:                                              ; preds = %75
  %103 = load i64*, i64** %15, align 8
  %104 = load i64, i64* %103, align 8
  %105 = load i64, i64* %16, align 8
  %106 = add i64 %105, 1
  %107 = icmp eq i64 %104, %106
  br i1 %107, label %108, label %110

108:                                              ; preds = %102
  %109 = load i32, i32* @IB_SMI_HANDLE, align 4
  br label %112

110:                                              ; preds = %102
  %111 = load i32, i32* @IB_SMI_DISCARD, align 4
  br label %112

112:                                              ; preds = %110, %108
  %113 = phi i32 [ %109, %108 ], [ %111, %110 ]
  store i32 %113, i32* %11, align 4
  br label %202

114:                                              ; preds = %27
  %115 = load i64, i64* %16, align 8
  %116 = icmp ne i64 %115, 0
  br i1 %116, label %117, label %141

117:                                              ; preds = %114
  %118 = load i64*, i64** %15, align 8
  %119 = load i64, i64* %118, align 8
  %120 = load i64, i64* %16, align 8
  %121 = add i64 %120, 1
  %122 = icmp eq i64 %119, %121
  br i1 %122, label %123, label %141

123:                                              ; preds = %117
  %124 = load i64*, i64** %15, align 8
  %125 = load i64, i64* %124, align 8
  %126 = add i64 %125, -1
  store i64 %126, i64* %124, align 8
  %127 = load i64*, i64** %18, align 8
  %128 = load i64*, i64** %15, align 8
  %129 = load i64, i64* %128, align 8
  %130 = getelementptr inbounds i64, i64* %127, i64 %129
  %131 = load i64, i64* %130, align 8
  %132 = load i32, i32* %13, align 4
  %133 = sext i32 %132 to i64
  %134 = icmp eq i64 %131, %133
  br i1 %134, label %135, label %137

135:                                              ; preds = %123
  %136 = load i32, i32* @IB_SMI_HANDLE, align 4
  br label %139

137:                                              ; preds = %123
  %138 = load i32, i32* @IB_SMI_DISCARD, align 4
  br label %139

139:                                              ; preds = %137, %135
  %140 = phi i32 [ %136, %135 ], [ %138, %137 ]
  store i32 %140, i32* %11, align 4
  br label %202

141:                                              ; preds = %117, %114
  %142 = load i64*, i64** %15, align 8
  %143 = load i64, i64* %142, align 8
  %144 = icmp ule i64 2, %143
  br i1 %144, label %145, label %171

145:                                              ; preds = %141
  %146 = load i64*, i64** %15, align 8
  %147 = load i64, i64* %146, align 8
  %148 = load i64, i64* %16, align 8
  %149 = icmp ule i64 %147, %148
  br i1 %149, label %150, label %171

150:                                              ; preds = %145
  %151 = load i32, i32* %12, align 4
  %152 = icmp ne i32 %151, 0
  br i1 %152, label %155, label %153

153:                                              ; preds = %150
  %154 = load i32, i32* @IB_SMI_DISCARD, align 4
  store i32 %154, i32* %11, align 4
  br label %202

155:                                              ; preds = %150
  %156 = load i64*, i64** %18, align 8
  %157 = load i64*, i64** %15, align 8
  %158 = load i64, i64* %157, align 8
  %159 = sub i64 %158, 1
  %160 = getelementptr inbounds i64, i64* %156, i64 %159
  %161 = load i64, i64* %160, align 8
  %162 = load i32, i32* %14, align 4
  %163 = sext i32 %162 to i64
  %164 = icmp ule i64 %161, %163
  br i1 %164, label %165, label %167

165:                                              ; preds = %155
  %166 = load i32, i32* @IB_SMI_HANDLE, align 4
  br label %169

167:                                              ; preds = %155
  %168 = load i32, i32* @IB_SMI_DISCARD, align 4
  br label %169

169:                                              ; preds = %167, %165
  %170 = phi i32 [ %166, %165 ], [ %168, %167 ]
  store i32 %170, i32* %11, align 4
  br label %202

171:                                              ; preds = %145, %141
  %172 = load i64*, i64** %15, align 8
  %173 = load i64, i64* %172, align 8
  %174 = icmp eq i64 %173, 1
  br i1 %174, label %175, label %192

175:                                              ; preds = %171
  %176 = load i32, i32* %21, align 4
  %177 = icmp ne i32 %176, 0
  br i1 %177, label %178, label %183

178:                                              ; preds = %175
  %179 = load i64*, i64** %15, align 8
  %180 = load i64, i64* %179, align 8
  %181 = add i64 %180, -1
  store i64 %181, i64* %179, align 8
  %182 = load i32, i32* @IB_SMI_HANDLE, align 4
  store i32 %182, i32* %11, align 4
  br label %202

183:                                              ; preds = %175
  %184 = load i32, i32* %12, align 4
  %185 = icmp ne i32 %184, 0
  br i1 %185, label %186, label %188

186:                                              ; preds = %183
  %187 = load i32, i32* @IB_SMI_HANDLE, align 4
  br label %190

188:                                              ; preds = %183
  %189 = load i32, i32* @IB_SMI_DISCARD, align 4
  br label %190

190:                                              ; preds = %188, %186
  %191 = phi i32 [ %187, %186 ], [ %189, %188 ]
  store i32 %191, i32* %11, align 4
  br label %202

192:                                              ; preds = %171
  %193 = load i64*, i64** %15, align 8
  %194 = load i64, i64* %193, align 8
  %195 = icmp eq i64 %194, 0
  br i1 %195, label %196, label %198

196:                                              ; preds = %192
  %197 = load i32, i32* @IB_SMI_HANDLE, align 4
  br label %200

198:                                              ; preds = %192
  %199 = load i32, i32* @IB_SMI_DISCARD, align 4
  br label %200

200:                                              ; preds = %198, %196
  %201 = phi i32 [ %197, %196 ], [ %199, %198 ]
  store i32 %201, i32* %11, align 4
  br label %202

202:                                              ; preds = %200, %190, %178, %169, %153, %139, %112, %100, %73, %51, %37, %25
  %203 = load i32, i32* %11, align 4
  ret i32 %203
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
