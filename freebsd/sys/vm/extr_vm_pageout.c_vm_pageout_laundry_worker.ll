; ModuleID = '/home/carl/AnghaBench/freebsd/sys/vm/extr_vm_pageout.c_vm_pageout_laundry_worker.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/vm/extr_vm_pageout.c_vm_pageout_laundry_worker.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.vm_domain = type { i64, i64, i32, i64, i32, i64, i64, i64, %struct.vm_pagequeue* }
%struct.vm_pagequeue = type { i64 }

@PQ_LAUNDRY = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [24 x i8] c"domain without segments\00", align 1
@swapon = common dso_local global i32 0, align 4
@vm_pageout_swapon = common dso_local global i32 0, align 4
@EVENTHANDLER_PRI_ANY = common dso_local global i32 0, align 4
@swapoff = common dso_local global i32 0, align 4
@vm_pageout_swapoff = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [19 x i8] c"negative target %d\00", align 1
@.str.2 = private unnamed_addr constant [18 x i8] c"negative cycle %d\00", align 1
@VM_LAUNDER_RATE = common dso_local global i32 0, align 4
@VM_INACT_SCAN_RATE = common dso_local global i32 0, align 4
@PQ_INACTIVE = common dso_local global i64 0, align 8
@vm_background_launder_max = common dso_local global i32 0, align 4
@PAGE_SIZE = common dso_local global i32 0, align 4
@vm_background_launder_rate = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [7 x i8] c"laundp\00", align 1
@hz = common dso_local global i32 0, align 4
@VM_LAUNDRY_IDLE = common dso_local global i64 0, align 8
@PVM = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [7 x i8] c"launds\00", align 1
@VM_LAUNDRY_SHORTFALL = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i8*)* @vm_pageout_laundry_worker to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @vm_pageout_laundry_worker(i8* %0) #0 {
  %2 = alloca i8*, align 8
  %3 = alloca %struct.vm_domain*, align 8
  %4 = alloca %struct.vm_pagequeue*, align 8
  %5 = alloca i64, align 8
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  store i8* %0, i8** %2, align 8
  %15 = load i8*, i8** %2, align 8
  %16 = ptrtoint i8* %15 to i64
  %17 = trunc i64 %16 to i32
  store i32 %17, i32* %8, align 4
  %18 = load i32, i32* %8, align 4
  %19 = call %struct.vm_domain* @VM_DOMAIN(i32 %18)
  store %struct.vm_domain* %19, %struct.vm_domain** %3, align 8
  %20 = load %struct.vm_domain*, %struct.vm_domain** %3, align 8
  %21 = getelementptr inbounds %struct.vm_domain, %struct.vm_domain* %20, i32 0, i32 8
  %22 = load %struct.vm_pagequeue*, %struct.vm_pagequeue** %21, align 8
  %23 = load i64, i64* @PQ_LAUNDRY, align 8
  %24 = getelementptr inbounds %struct.vm_pagequeue, %struct.vm_pagequeue* %22, i64 %23
  store %struct.vm_pagequeue* %24, %struct.vm_pagequeue** %4, align 8
  %25 = load %struct.vm_domain*, %struct.vm_domain** %3, align 8
  %26 = getelementptr inbounds %struct.vm_domain, %struct.vm_domain* %25, i32 0, i32 0
  %27 = load i64, i64* %26, align 8
  %28 = icmp ne i64 %27, 0
  %29 = zext i1 %28 to i32
  %30 = call i32 @KASSERT(i32 %29, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str, i64 0, i64 0))
  store i32 0, i32* %11, align 4
  store i32 0, i32* %14, align 4
  store i32 0, i32* %12, align 4
  store i32 0, i32* %13, align 4
  store i32 0, i32* %9, align 4
  store i64 0, i64* %7, align 8
  %31 = load i32, i32* @swapon, align 4
  %32 = load i32, i32* @vm_pageout_swapon, align 4
  %33 = load %struct.vm_domain*, %struct.vm_domain** %3, align 8
  %34 = load i32, i32* @EVENTHANDLER_PRI_ANY, align 4
  %35 = call i32 @EVENTHANDLER_REGISTER(i32 %31, i32 %32, %struct.vm_domain* %33, i32 %34)
  %36 = load i32, i32* @swapoff, align 4
  %37 = load i32, i32* @vm_pageout_swapoff, align 4
  %38 = load %struct.vm_domain*, %struct.vm_domain** %3, align 8
  %39 = load i32, i32* @EVENTHANDLER_PRI_ANY, align 4
  %40 = call i32 @EVENTHANDLER_REGISTER(i32 %36, i32 %37, %struct.vm_domain* %38, i32 %39)
  br label %41

41:                                               ; preds = %220, %1
  %42 = load i32, i32* %13, align 4
  %43 = icmp sge i32 %42, 0
  %44 = zext i1 %43 to i32
  %45 = load i32, i32* %13, align 4
  %46 = sext i32 %45 to i64
  %47 = inttoptr i64 %46 to i8*
  %48 = call i32 @KASSERT(i32 %44, i8* %47)
  %49 = load i32, i32* %12, align 4
  %50 = icmp sge i32 %49, 0
  %51 = zext i1 %50 to i32
  %52 = load i32, i32* %12, align 4
  %53 = sext i32 %52 to i64
  %54 = inttoptr i64 %53 to i8*
  %55 = call i32 @KASSERT(i32 %51, i8* %54)
  store i32 0, i32* %10, align 4
  %56 = load i32, i32* %11, align 4
  %57 = icmp sgt i32 %56, 0
  br i1 %57, label %58, label %63

58:                                               ; preds = %41
  store i32 1, i32* %14, align 4
  %59 = load i32, i32* @VM_LAUNDER_RATE, align 4
  %60 = load i32, i32* @VM_INACT_SCAN_RATE, align 4
  %61 = sdiv i32 %59, %60
  store i32 %61, i32* %12, align 4
  %62 = load i32, i32* %11, align 4
  store i32 %62, i32* %13, align 4
  br label %77

63:                                               ; preds = %41
  %64 = load i32, i32* %14, align 4
  %65 = icmp ne i32 %64, 0
  br i1 %65, label %67, label %66

66:                                               ; preds = %63
  br label %82

67:                                               ; preds = %63
  %68 = load i32, i32* %12, align 4
  %69 = icmp eq i32 %68, 0
  br i1 %69, label %74, label %70

70:                                               ; preds = %67
  %71 = load %struct.vm_domain*, %struct.vm_domain** %3, align 8
  %72 = call i32 @vm_laundry_target(%struct.vm_domain* %71)
  %73 = icmp sle i32 %72, 0
  br i1 %73, label %74, label %75

74:                                               ; preds = %70, %67
  store i32 0, i32* %14, align 4
  store i32 0, i32* %13, align 4
  br label %82

75:                                               ; preds = %70
  br label %76

76:                                               ; preds = %75
  br label %77

77:                                               ; preds = %76, %58
  %78 = load i32, i32* %13, align 4
  %79 = load i32, i32* %12, align 4
  %80 = add nsw i32 %79, -1
  store i32 %80, i32* %12, align 4
  %81 = sdiv i32 %78, %79
  store i32 %81, i32* %10, align 4
  br label %157

82:                                               ; preds = %74, %66
  %83 = load %struct.vm_domain*, %struct.vm_domain** %3, align 8
  %84 = getelementptr inbounds %struct.vm_domain, %struct.vm_domain* %83, i32 0, i32 1
  %85 = load i64, i64* %84, align 8
  %86 = load %struct.vm_domain*, %struct.vm_domain** %3, align 8
  %87 = getelementptr inbounds %struct.vm_domain, %struct.vm_domain* %86, i32 0, i32 8
  %88 = load %struct.vm_pagequeue*, %struct.vm_pagequeue** %87, align 8
  %89 = load i64, i64* @PQ_INACTIVE, align 8
  %90 = getelementptr inbounds %struct.vm_pagequeue, %struct.vm_pagequeue* %88, i64 %89
  %91 = getelementptr inbounds %struct.vm_pagequeue, %struct.vm_pagequeue* %90, i32 0, i32 0
  %92 = load i64, i64* %91, align 8
  %93 = add nsw i64 %85, %92
  store i64 %93, i64* %5, align 8
  %94 = load %struct.vm_domain*, %struct.vm_domain** %3, align 8
  %95 = getelementptr inbounds %struct.vm_domain, %struct.vm_domain* %94, i32 0, i32 8
  %96 = load %struct.vm_pagequeue*, %struct.vm_pagequeue** %95, align 8
  %97 = load i64, i64* @PQ_LAUNDRY, align 8
  %98 = getelementptr inbounds %struct.vm_pagequeue, %struct.vm_pagequeue* %96, i64 %97
  %99 = getelementptr inbounds %struct.vm_pagequeue, %struct.vm_pagequeue* %98, i32 0, i32 0
  %100 = load i64, i64* %99, align 8
  store i64 %100, i64* %6, align 8
  %101 = load i32, i32* %13, align 4
  %102 = icmp eq i32 %101, 0
  br i1 %102, label %103, label %123

103:                                              ; preds = %82
  %104 = load i64, i64* %6, align 8
  %105 = load i64, i64* %7, align 8
  %106 = add nsw i64 %105, 1
  %107 = load %struct.vm_domain*, %struct.vm_domain** %3, align 8
  %108 = getelementptr inbounds %struct.vm_domain, %struct.vm_domain* %107, i32 0, i32 7
  %109 = load i64, i64* %108, align 8
  %110 = load %struct.vm_domain*, %struct.vm_domain** %3, align 8
  %111 = getelementptr inbounds %struct.vm_domain, %struct.vm_domain* %110, i32 0, i32 6
  %112 = load i64, i64* %111, align 8
  %113 = sub nsw i64 %109, %112
  %114 = call i32 @howmany(i64 %106, i64 %113)
  %115 = call i64 @isqrt(i32 %114)
  %116 = mul nsw i64 %104, %115
  %117 = load i64, i64* %5, align 8
  %118 = icmp sge i64 %116, %117
  br i1 %118, label %119, label %123

119:                                              ; preds = %103
  %120 = load %struct.vm_domain*, %struct.vm_domain** %3, align 8
  %121 = getelementptr inbounds %struct.vm_domain, %struct.vm_domain* %120, i32 0, i32 2
  %122 = load i32, i32* %121, align 8
  store i32 %122, i32* %13, align 4
  br label %123

123:                                              ; preds = %119, %103, %82
  %124 = load i32, i32* %13, align 4
  %125 = icmp sgt i32 %124, 0
  br i1 %125, label %126, label %156

126:                                              ; preds = %123
  %127 = load i64, i64* %7, align 8
  %128 = icmp sgt i64 %127, 0
  br i1 %128, label %129, label %131

129:                                              ; preds = %126
  store i64 0, i64* %7, align 8
  %130 = load i32, i32* %13, align 4
  store i32 %130, i32* %9, align 4
  br label %142

131:                                              ; preds = %126
  %132 = load i32, i32* %9, align 4
  %133 = load i32, i32* %13, align 4
  %134 = sub nsw i32 %132, %133
  %135 = load i32, i32* @vm_background_launder_max, align 4
  %136 = load i32, i32* @PAGE_SIZE, align 4
  %137 = mul nsw i32 %135, %136
  %138 = sdiv i32 %137, 1024
  %139 = icmp sge i32 %134, %138
  br i1 %139, label %140, label %141

140:                                              ; preds = %131
  store i32 0, i32* %13, align 4
  br label %141

141:                                              ; preds = %140, %131
  br label %142

142:                                              ; preds = %141, %129
  %143 = load i32, i32* @vm_background_launder_rate, align 4
  %144 = load i32, i32* @PAGE_SIZE, align 4
  %145 = mul nsw i32 %143, %144
  %146 = sdiv i32 %145, 1024
  store i32 %146, i32* %10, align 4
  %147 = load i32, i32* @VM_LAUNDER_RATE, align 4
  %148 = load i32, i32* %10, align 4
  %149 = sdiv i32 %148, %147
  store i32 %149, i32* %10, align 4
  %150 = load i32, i32* %10, align 4
  %151 = load i32, i32* %13, align 4
  %152 = icmp sgt i32 %150, %151
  br i1 %152, label %153, label %155

153:                                              ; preds = %142
  %154 = load i32, i32* %13, align 4
  store i32 %154, i32* %10, align 4
  br label %155

155:                                              ; preds = %153, %142
  br label %156

156:                                              ; preds = %155, %123
  br label %157

157:                                              ; preds = %156, %77
  %158 = load i32, i32* %10, align 4
  %159 = icmp sgt i32 %158, 0
  br i1 %159, label %160, label %175

160:                                              ; preds = %157
  %161 = load %struct.vm_domain*, %struct.vm_domain** %3, align 8
  %162 = load i32, i32* %10, align 4
  %163 = load i32, i32* %14, align 4
  %164 = call i32 @vm_pageout_launder(%struct.vm_domain* %161, i32 %162, i32 %163)
  %165 = load i32, i32* %13, align 4
  %166 = call i64 @min(i32 %164, i32 %165)
  %167 = load i32, i32* %13, align 4
  %168 = sext i32 %167 to i64
  %169 = sub nsw i64 %168, %166
  %170 = trunc i64 %169 to i32
  store i32 %170, i32* %13, align 4
  %171 = load i32, i32* @hz, align 4
  %172 = load i32, i32* @VM_LAUNDER_RATE, align 4
  %173 = sdiv i32 %171, %172
  %174 = call i32 @pause(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.3, i64 0, i64 0), i32 %173)
  br label %175

175:                                              ; preds = %160, %157
  %176 = load %struct.vm_pagequeue*, %struct.vm_pagequeue** %4, align 8
  %177 = call i32 @vm_pagequeue_lock(%struct.vm_pagequeue* %176)
  %178 = load i32, i32* %13, align 4
  %179 = icmp eq i32 %178, 0
  br i1 %179, label %180, label %193

180:                                              ; preds = %175
  %181 = load %struct.vm_domain*, %struct.vm_domain** %3, align 8
  %182 = getelementptr inbounds %struct.vm_domain, %struct.vm_domain* %181, i32 0, i32 3
  %183 = load i64, i64* %182, align 8
  %184 = load i64, i64* @VM_LAUNDRY_IDLE, align 8
  %185 = icmp eq i64 %183, %184
  br i1 %185, label %186, label %193

186:                                              ; preds = %180
  %187 = load %struct.vm_domain*, %struct.vm_domain** %3, align 8
  %188 = getelementptr inbounds %struct.vm_domain, %struct.vm_domain* %187, i32 0, i32 3
  %189 = load %struct.vm_pagequeue*, %struct.vm_pagequeue** %4, align 8
  %190 = call i32 @vm_pagequeue_lockptr(%struct.vm_pagequeue* %189)
  %191 = load i32, i32* @PVM, align 4
  %192 = call i32 @mtx_sleep(i64* %188, i32 %190, i32 %191, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.4, i64 0, i64 0), i32 0)
  br label %193

193:                                              ; preds = %186, %180, %175
  %194 = load %struct.vm_domain*, %struct.vm_domain** %3, align 8
  %195 = getelementptr inbounds %struct.vm_domain, %struct.vm_domain* %194, i32 0, i32 3
  %196 = load i64, i64* %195, align 8
  %197 = load i64, i64* @VM_LAUNDRY_SHORTFALL, align 8
  %198 = icmp eq i64 %196, %197
  br i1 %198, label %199, label %212

199:                                              ; preds = %193
  %200 = load i32, i32* %14, align 4
  %201 = icmp ne i32 %200, 0
  br i1 %201, label %202, label %205

202:                                              ; preds = %199
  %203 = load i32, i32* %12, align 4
  %204 = icmp eq i32 %203, 0
  br i1 %204, label %205, label %212

205:                                              ; preds = %202, %199
  %206 = load %struct.vm_domain*, %struct.vm_domain** %3, align 8
  %207 = call i32 @vm_laundry_target(%struct.vm_domain* %206)
  %208 = load %struct.vm_domain*, %struct.vm_domain** %3, align 8
  %209 = getelementptr inbounds %struct.vm_domain, %struct.vm_domain* %208, i32 0, i32 4
  %210 = load i32, i32* %209, align 8
  %211 = add nsw i32 %207, %210
  store i32 %211, i32* %11, align 4
  store i32 0, i32* %13, align 4
  br label %213

212:                                              ; preds = %202, %193
  store i32 0, i32* %11, align 4
  br label %213

213:                                              ; preds = %212, %205
  %214 = load i32, i32* %13, align 4
  %215 = icmp eq i32 %214, 0
  br i1 %215, label %216, label %220

216:                                              ; preds = %213
  %217 = load i64, i64* @VM_LAUNDRY_IDLE, align 8
  %218 = load %struct.vm_domain*, %struct.vm_domain** %3, align 8
  %219 = getelementptr inbounds %struct.vm_domain, %struct.vm_domain* %218, i32 0, i32 3
  store i64 %217, i64* %219, align 8
  br label %220

220:                                              ; preds = %216, %213
  %221 = load %struct.vm_domain*, %struct.vm_domain** %3, align 8
  %222 = getelementptr inbounds %struct.vm_domain, %struct.vm_domain* %221, i32 0, i32 5
  %223 = load i64, i64* %222, align 8
  %224 = load i64, i64* %7, align 8
  %225 = add nsw i64 %224, %223
  store i64 %225, i64* %7, align 8
  %226 = load %struct.vm_domain*, %struct.vm_domain** %3, align 8
  %227 = getelementptr inbounds %struct.vm_domain, %struct.vm_domain* %226, i32 0, i32 5
  store i64 0, i64* %227, align 8
  %228 = load %struct.vm_pagequeue*, %struct.vm_pagequeue** %4, align 8
  %229 = call i32 @vm_pagequeue_unlock(%struct.vm_pagequeue* %228)
  br label %41
}

declare dso_local %struct.vm_domain* @VM_DOMAIN(i32) #1

declare dso_local i32 @KASSERT(i32, i8*) #1

declare dso_local i32 @EVENTHANDLER_REGISTER(i32, i32, %struct.vm_domain*, i32) #1

declare dso_local i32 @vm_laundry_target(%struct.vm_domain*) #1

declare dso_local i64 @isqrt(i32) #1

declare dso_local i32 @howmany(i64, i64) #1

declare dso_local i64 @min(i32, i32) #1

declare dso_local i32 @vm_pageout_launder(%struct.vm_domain*, i32, i32) #1

declare dso_local i32 @pause(i8*, i32) #1

declare dso_local i32 @vm_pagequeue_lock(%struct.vm_pagequeue*) #1

declare dso_local i32 @mtx_sleep(i64*, i32, i32, i8*, i32) #1

declare dso_local i32 @vm_pagequeue_lockptr(%struct.vm_pagequeue*) #1

declare dso_local i32 @vm_pagequeue_unlock(%struct.vm_pagequeue*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
