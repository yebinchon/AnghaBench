; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/sound/pci/extr_neomagic.c_nm_intr.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/sound/pci/extr_neomagic.c_nm_intr.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sc_info = type { i32, i32, i32, i32, i32, i32, i32, i32, %struct.TYPE_4__, %struct.TYPE_3__ }
%struct.TYPE_4__ = type { i32, i32, i64 }
%struct.TYPE_3__ = type { i32, i32, i64 }

@NM_INT_REG = common dso_local global i32 0, align 4
@NM_BUFFSIZE = common dso_local global i32 0, align 4
@NM_PBUFFER_WMARK = common dso_local global i32 0, align 4
@NM_RBUFFER_WMARK = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [12 x i8] c"misc int 1\0A\00", align 1
@.str.1 = private unnamed_addr constant [12 x i8] c"misc int 2\0A\00", align 1
@.str.2 = private unnamed_addr constant [13 x i8] c"unknown int\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i8*)* @nm_intr to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @nm_intr(i8* %0) #0 {
  %2 = alloca i8*, align 8
  %3 = alloca %struct.sc_info*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  store i8* %0, i8** %2, align 8
  %6 = load i8*, i8** %2, align 8
  %7 = bitcast i8* %6 to %struct.sc_info*
  store %struct.sc_info* %7, %struct.sc_info** %3, align 8
  %8 = load %struct.sc_info*, %struct.sc_info** %3, align 8
  %9 = load i32, i32* @NM_INT_REG, align 4
  %10 = load %struct.sc_info*, %struct.sc_info** %3, align 8
  %11 = getelementptr inbounds %struct.sc_info, %struct.sc_info* %10, i32 0, i32 0
  %12 = load i32, i32* %11, align 8
  %13 = call i32 @nm_rd(%struct.sc_info* %8, i32 %9, i32 %12)
  store i32 %13, i32* %4, align 4
  %14 = load i32, i32* %4, align 4
  %15 = icmp eq i32 %14, 0
  br i1 %15, label %16, label %17

16:                                               ; preds = %1
  br label %190

17:                                               ; preds = %1
  %18 = load i32, i32* %4, align 4
  %19 = load %struct.sc_info*, %struct.sc_info** %3, align 8
  %20 = getelementptr inbounds %struct.sc_info, %struct.sc_info* %19, i32 0, i32 1
  %21 = load i32, i32* %20, align 4
  %22 = and i32 %18, %21
  %23 = icmp ne i32 %22, 0
  br i1 %23, label %24, label %69

24:                                               ; preds = %17
  %25 = load %struct.sc_info*, %struct.sc_info** %3, align 8
  %26 = getelementptr inbounds %struct.sc_info, %struct.sc_info* %25, i32 0, i32 1
  %27 = load i32, i32* %26, align 4
  %28 = xor i32 %27, -1
  %29 = load i32, i32* %4, align 4
  %30 = and i32 %29, %28
  store i32 %30, i32* %4, align 4
  %31 = load %struct.sc_info*, %struct.sc_info** %3, align 8
  %32 = getelementptr inbounds %struct.sc_info, %struct.sc_info* %31, i32 0, i32 9
  %33 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %32, i32 0, i32 2
  %34 = load i64, i64* %33, align 8
  %35 = load %struct.sc_info*, %struct.sc_info** %3, align 8
  %36 = getelementptr inbounds %struct.sc_info, %struct.sc_info* %35, i32 0, i32 9
  %37 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %36, i32 0, i32 1
  %38 = load i32, i32* %37, align 4
  %39 = sext i32 %38 to i64
  %40 = add nsw i64 %39, %34
  %41 = trunc i64 %40 to i32
  store i32 %41, i32* %37, align 4
  %42 = load i32, i32* @NM_BUFFSIZE, align 4
  %43 = load %struct.sc_info*, %struct.sc_info** %3, align 8
  %44 = getelementptr inbounds %struct.sc_info, %struct.sc_info* %43, i32 0, i32 9
  %45 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %44, i32 0, i32 1
  %46 = load i32, i32* %45, align 4
  %47 = srem i32 %46, %42
  store i32 %47, i32* %45, align 4
  %48 = load %struct.sc_info*, %struct.sc_info** %3, align 8
  %49 = load i32, i32* @NM_PBUFFER_WMARK, align 4
  %50 = load %struct.sc_info*, %struct.sc_info** %3, align 8
  %51 = getelementptr inbounds %struct.sc_info, %struct.sc_info* %50, i32 0, i32 2
  %52 = load i32, i32* %51, align 8
  %53 = load %struct.sc_info*, %struct.sc_info** %3, align 8
  %54 = getelementptr inbounds %struct.sc_info, %struct.sc_info* %53, i32 0, i32 9
  %55 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %54, i32 0, i32 1
  %56 = load i32, i32* %55, align 4
  %57 = add nsw i32 %52, %56
  %58 = call i32 @nm_wr(%struct.sc_info* %48, i32 %49, i32 %57, i32 4)
  %59 = load %struct.sc_info*, %struct.sc_info** %3, align 8
  %60 = load %struct.sc_info*, %struct.sc_info** %3, align 8
  %61 = getelementptr inbounds %struct.sc_info, %struct.sc_info* %60, i32 0, i32 1
  %62 = load i32, i32* %61, align 4
  %63 = call i32 @nm_ackint(%struct.sc_info* %59, i32 %62)
  %64 = load %struct.sc_info*, %struct.sc_info** %3, align 8
  %65 = getelementptr inbounds %struct.sc_info, %struct.sc_info* %64, i32 0, i32 9
  %66 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %65, i32 0, i32 0
  %67 = load i32, i32* %66, align 8
  %68 = call i32 @chn_intr(i32 %67)
  br label %69

69:                                               ; preds = %24, %17
  %70 = load i32, i32* %4, align 4
  %71 = load %struct.sc_info*, %struct.sc_info** %3, align 8
  %72 = getelementptr inbounds %struct.sc_info, %struct.sc_info* %71, i32 0, i32 3
  %73 = load i32, i32* %72, align 4
  %74 = and i32 %70, %73
  %75 = icmp ne i32 %74, 0
  br i1 %75, label %76, label %121

76:                                               ; preds = %69
  %77 = load %struct.sc_info*, %struct.sc_info** %3, align 8
  %78 = getelementptr inbounds %struct.sc_info, %struct.sc_info* %77, i32 0, i32 3
  %79 = load i32, i32* %78, align 4
  %80 = xor i32 %79, -1
  %81 = load i32, i32* %4, align 4
  %82 = and i32 %81, %80
  store i32 %82, i32* %4, align 4
  %83 = load %struct.sc_info*, %struct.sc_info** %3, align 8
  %84 = getelementptr inbounds %struct.sc_info, %struct.sc_info* %83, i32 0, i32 8
  %85 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %84, i32 0, i32 2
  %86 = load i64, i64* %85, align 8
  %87 = load %struct.sc_info*, %struct.sc_info** %3, align 8
  %88 = getelementptr inbounds %struct.sc_info, %struct.sc_info* %87, i32 0, i32 8
  %89 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %88, i32 0, i32 1
  %90 = load i32, i32* %89, align 4
  %91 = sext i32 %90 to i64
  %92 = add nsw i64 %91, %86
  %93 = trunc i64 %92 to i32
  store i32 %93, i32* %89, align 4
  %94 = load i32, i32* @NM_BUFFSIZE, align 4
  %95 = load %struct.sc_info*, %struct.sc_info** %3, align 8
  %96 = getelementptr inbounds %struct.sc_info, %struct.sc_info* %95, i32 0, i32 8
  %97 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %96, i32 0, i32 1
  %98 = load i32, i32* %97, align 4
  %99 = srem i32 %98, %94
  store i32 %99, i32* %97, align 4
  %100 = load %struct.sc_info*, %struct.sc_info** %3, align 8
  %101 = load i32, i32* @NM_RBUFFER_WMARK, align 4
  %102 = load %struct.sc_info*, %struct.sc_info** %3, align 8
  %103 = getelementptr inbounds %struct.sc_info, %struct.sc_info* %102, i32 0, i32 4
  %104 = load i32, i32* %103, align 8
  %105 = load %struct.sc_info*, %struct.sc_info** %3, align 8
  %106 = getelementptr inbounds %struct.sc_info, %struct.sc_info* %105, i32 0, i32 8
  %107 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %106, i32 0, i32 1
  %108 = load i32, i32* %107, align 4
  %109 = add nsw i32 %104, %108
  %110 = call i32 @nm_wr(%struct.sc_info* %100, i32 %101, i32 %109, i32 4)
  %111 = load %struct.sc_info*, %struct.sc_info** %3, align 8
  %112 = load %struct.sc_info*, %struct.sc_info** %3, align 8
  %113 = getelementptr inbounds %struct.sc_info, %struct.sc_info* %112, i32 0, i32 3
  %114 = load i32, i32* %113, align 4
  %115 = call i32 @nm_ackint(%struct.sc_info* %111, i32 %114)
  %116 = load %struct.sc_info*, %struct.sc_info** %3, align 8
  %117 = getelementptr inbounds %struct.sc_info, %struct.sc_info* %116, i32 0, i32 8
  %118 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %117, i32 0, i32 0
  %119 = load i32, i32* %118, align 8
  %120 = call i32 @chn_intr(i32 %119)
  br label %121

121:                                              ; preds = %76, %69
  %122 = load i32, i32* %4, align 4
  %123 = load %struct.sc_info*, %struct.sc_info** %3, align 8
  %124 = getelementptr inbounds %struct.sc_info, %struct.sc_info* %123, i32 0, i32 5
  %125 = load i32, i32* %124, align 4
  %126 = and i32 %122, %125
  %127 = icmp ne i32 %126, 0
  br i1 %127, label %128, label %150

128:                                              ; preds = %121
  %129 = load %struct.sc_info*, %struct.sc_info** %3, align 8
  %130 = getelementptr inbounds %struct.sc_info, %struct.sc_info* %129, i32 0, i32 5
  %131 = load i32, i32* %130, align 4
  %132 = xor i32 %131, -1
  %133 = load i32, i32* %4, align 4
  %134 = and i32 %133, %132
  store i32 %134, i32* %4, align 4
  %135 = load %struct.sc_info*, %struct.sc_info** %3, align 8
  %136 = load %struct.sc_info*, %struct.sc_info** %3, align 8
  %137 = getelementptr inbounds %struct.sc_info, %struct.sc_info* %136, i32 0, i32 5
  %138 = load i32, i32* %137, align 4
  %139 = call i32 @nm_ackint(%struct.sc_info* %135, i32 %138)
  %140 = load %struct.sc_info*, %struct.sc_info** %3, align 8
  %141 = call i32 @nm_rd(%struct.sc_info* %140, i32 1024, i32 1)
  store i32 %141, i32* %5, align 4
  %142 = load %struct.sc_info*, %struct.sc_info** %3, align 8
  %143 = load i32, i32* %5, align 4
  %144 = or i32 %143, 2
  %145 = call i32 @nm_wr(%struct.sc_info* %142, i32 1024, i32 %144, i32 1)
  %146 = load %struct.sc_info*, %struct.sc_info** %3, align 8
  %147 = getelementptr inbounds %struct.sc_info, %struct.sc_info* %146, i32 0, i32 7
  %148 = load i32, i32* %147, align 4
  %149 = call i32 @device_printf(i32 %148, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str, i64 0, i64 0))
  br label %150

150:                                              ; preds = %128, %121
  %151 = load i32, i32* %4, align 4
  %152 = load %struct.sc_info*, %struct.sc_info** %3, align 8
  %153 = getelementptr inbounds %struct.sc_info, %struct.sc_info* %152, i32 0, i32 6
  %154 = load i32, i32* %153, align 8
  %155 = and i32 %151, %154
  %156 = icmp ne i32 %155, 0
  br i1 %156, label %157, label %179

157:                                              ; preds = %150
  %158 = load %struct.sc_info*, %struct.sc_info** %3, align 8
  %159 = getelementptr inbounds %struct.sc_info, %struct.sc_info* %158, i32 0, i32 6
  %160 = load i32, i32* %159, align 8
  %161 = xor i32 %160, -1
  %162 = load i32, i32* %4, align 4
  %163 = and i32 %162, %161
  store i32 %163, i32* %4, align 4
  %164 = load %struct.sc_info*, %struct.sc_info** %3, align 8
  %165 = load %struct.sc_info*, %struct.sc_info** %3, align 8
  %166 = getelementptr inbounds %struct.sc_info, %struct.sc_info* %165, i32 0, i32 6
  %167 = load i32, i32* %166, align 8
  %168 = call i32 @nm_ackint(%struct.sc_info* %164, i32 %167)
  %169 = load %struct.sc_info*, %struct.sc_info** %3, align 8
  %170 = call i32 @nm_rd(%struct.sc_info* %169, i32 1024, i32 1)
  store i32 %170, i32* %5, align 4
  %171 = load %struct.sc_info*, %struct.sc_info** %3, align 8
  %172 = load i32, i32* %5, align 4
  %173 = and i32 %172, -3
  %174 = call i32 @nm_wr(%struct.sc_info* %171, i32 1024, i32 %173, i32 1)
  %175 = load %struct.sc_info*, %struct.sc_info** %3, align 8
  %176 = getelementptr inbounds %struct.sc_info, %struct.sc_info* %175, i32 0, i32 7
  %177 = load i32, i32* %176, align 4
  %178 = call i32 @device_printf(i32 %177, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.1, i64 0, i64 0))
  br label %179

179:                                              ; preds = %157, %150
  %180 = load i32, i32* %4, align 4
  %181 = icmp ne i32 %180, 0
  br i1 %181, label %182, label %190

182:                                              ; preds = %179
  %183 = load %struct.sc_info*, %struct.sc_info** %3, align 8
  %184 = load i32, i32* %4, align 4
  %185 = call i32 @nm_ackint(%struct.sc_info* %183, i32 %184)
  %186 = load %struct.sc_info*, %struct.sc_info** %3, align 8
  %187 = getelementptr inbounds %struct.sc_info, %struct.sc_info* %186, i32 0, i32 7
  %188 = load i32, i32* %187, align 4
  %189 = call i32 @device_printf(i32 %188, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.2, i64 0, i64 0))
  br label %190

190:                                              ; preds = %16, %182, %179
  ret void
}

declare dso_local i32 @nm_rd(%struct.sc_info*, i32, i32) #1

declare dso_local i32 @nm_wr(%struct.sc_info*, i32, i32, i32) #1

declare dso_local i32 @nm_ackint(%struct.sc_info*, i32) #1

declare dso_local i32 @chn_intr(i32) #1

declare dso_local i32 @device_printf(i32, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
