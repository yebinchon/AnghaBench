; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/sound/pci/extr_t4dwave.c_tr_wrch.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/sound/pci/extr_t4dwave.c_tr_wrch.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.tr_chinfo = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, %struct.tr_info* }
%struct.tr_info = type { i32, i32 }

@TR_CHN_REGS = common dso_local global i32 0, align 4
@ALI_MAXADDR = common dso_local global i32 0, align 4
@TR_MAXADDR = common dso_local global i32 0, align 4
@TR_REG_CHNBASE = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.tr_chinfo*)* @tr_wrch to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @tr_wrch(%struct.tr_chinfo* %0) #0 {
  %2 = alloca %struct.tr_chinfo*, align 8
  %3 = alloca %struct.tr_info*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca i64, align 8
  %6 = alloca i32, align 4
  store %struct.tr_chinfo* %0, %struct.tr_chinfo** %2, align 8
  %7 = load %struct.tr_chinfo*, %struct.tr_chinfo** %2, align 8
  %8 = getelementptr inbounds %struct.tr_chinfo, %struct.tr_chinfo* %7, i32 0, i32 14
  %9 = load %struct.tr_info*, %struct.tr_info** %8, align 8
  store %struct.tr_info* %9, %struct.tr_info** %3, align 8
  %10 = load i32, i32* @TR_CHN_REGS, align 4
  %11 = zext i32 %10 to i64
  %12 = call i8* @llvm.stacksave()
  store i8* %12, i8** %4, align 8
  %13 = alloca i32, i64 %11, align 16
  store i64 %11, i64* %5, align 8
  %14 = load %struct.tr_chinfo*, %struct.tr_chinfo** %2, align 8
  %15 = getelementptr inbounds %struct.tr_chinfo, %struct.tr_chinfo* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 8
  %17 = and i32 %16, 1
  store i32 %17, i32* %15, align 8
  %18 = load %struct.tr_chinfo*, %struct.tr_chinfo** %2, align 8
  %19 = getelementptr inbounds %struct.tr_chinfo, %struct.tr_chinfo* %18, i32 0, i32 1
  %20 = load i32, i32* %19, align 4
  %21 = and i32 %20, 3
  store i32 %21, i32* %19, align 4
  %22 = load %struct.tr_chinfo*, %struct.tr_chinfo** %2, align 8
  %23 = getelementptr inbounds %struct.tr_chinfo, %struct.tr_chinfo* %22, i32 0, i32 2
  %24 = load i32, i32* %23, align 8
  %25 = and i32 %24, 15
  store i32 %25, i32* %23, align 8
  %26 = load %struct.tr_chinfo*, %struct.tr_chinfo** %2, align 8
  %27 = getelementptr inbounds %struct.tr_chinfo, %struct.tr_chinfo* %26, i32 0, i32 3
  %28 = load i32, i32* %27, align 4
  %29 = and i32 %28, 15
  store i32 %29, i32* %27, align 4
  %30 = load %struct.tr_chinfo*, %struct.tr_chinfo** %2, align 8
  %31 = getelementptr inbounds %struct.tr_chinfo, %struct.tr_chinfo* %30, i32 0, i32 4
  %32 = load i32, i32* %31, align 8
  %33 = and i32 %32, 127
  store i32 %33, i32* %31, align 8
  %34 = load %struct.tr_chinfo*, %struct.tr_chinfo** %2, align 8
  %35 = getelementptr inbounds %struct.tr_chinfo, %struct.tr_chinfo* %34, i32 0, i32 5
  %36 = load i32, i32* %35, align 4
  %37 = and i32 %36, 127
  store i32 %37, i32* %35, align 4
  %38 = load %struct.tr_chinfo*, %struct.tr_chinfo** %2, align 8
  %39 = getelementptr inbounds %struct.tr_chinfo, %struct.tr_chinfo* %38, i32 0, i32 6
  %40 = load i32, i32* %39, align 8
  %41 = and i32 %40, 127
  store i32 %41, i32* %39, align 8
  %42 = load %struct.tr_chinfo*, %struct.tr_chinfo** %2, align 8
  %43 = getelementptr inbounds %struct.tr_chinfo, %struct.tr_chinfo* %42, i32 0, i32 7
  %44 = load i32, i32* %43, align 4
  %45 = and i32 %44, 255
  store i32 %45, i32* %43, align 4
  %46 = load %struct.tr_chinfo*, %struct.tr_chinfo** %2, align 8
  %47 = getelementptr inbounds %struct.tr_chinfo, %struct.tr_chinfo* %46, i32 0, i32 8
  %48 = load i32, i32* %47, align 8
  %49 = and i32 %48, 4095
  store i32 %49, i32* %47, align 8
  %50 = load %struct.tr_chinfo*, %struct.tr_chinfo** %2, align 8
  %51 = getelementptr inbounds %struct.tr_chinfo, %struct.tr_chinfo* %50, i32 0, i32 9
  %52 = load i32, i32* %51, align 4
  %53 = and i32 %52, 4095
  store i32 %53, i32* %51, align 4
  %54 = load %struct.tr_chinfo*, %struct.tr_chinfo** %2, align 8
  %55 = getelementptr inbounds %struct.tr_chinfo, %struct.tr_chinfo* %54, i32 0, i32 10
  %56 = load i32, i32* %55, align 8
  %57 = and i32 %56, 65535
  store i32 %57, i32* %55, align 8
  %58 = load %struct.tr_info*, %struct.tr_info** %3, align 8
  %59 = getelementptr inbounds %struct.tr_info, %struct.tr_info* %58, i32 0, i32 0
  %60 = load i32, i32* %59, align 4
  %61 = icmp eq i32 %60, 131
  br i1 %61, label %62, label %68

62:                                               ; preds = %1
  %63 = load i32, i32* @ALI_MAXADDR, align 4
  %64 = load %struct.tr_chinfo*, %struct.tr_chinfo** %2, align 8
  %65 = getelementptr inbounds %struct.tr_chinfo, %struct.tr_chinfo* %64, i32 0, i32 11
  %66 = load i32, i32* %65, align 4
  %67 = and i32 %66, %63
  store i32 %67, i32* %65, align 4
  br label %74

68:                                               ; preds = %1
  %69 = load i32, i32* @TR_MAXADDR, align 4
  %70 = load %struct.tr_chinfo*, %struct.tr_chinfo** %2, align 8
  %71 = getelementptr inbounds %struct.tr_chinfo, %struct.tr_chinfo* %70, i32 0, i32 11
  %72 = load i32, i32* %71, align 4
  %73 = and i32 %72, %69
  store i32 %73, i32* %71, align 4
  br label %74

74:                                               ; preds = %68, %62
  %75 = load %struct.tr_chinfo*, %struct.tr_chinfo** %2, align 8
  %76 = getelementptr inbounds %struct.tr_chinfo, %struct.tr_chinfo* %75, i32 0, i32 11
  %77 = load i32, i32* %76, align 4
  %78 = getelementptr inbounds i32, i32* %13, i64 1
  store i32 %77, i32* %78, align 4
  %79 = load %struct.tr_chinfo*, %struct.tr_chinfo** %2, align 8
  %80 = getelementptr inbounds %struct.tr_chinfo, %struct.tr_chinfo* %79, i32 0, i32 1
  %81 = load i32, i32* %80, align 4
  %82 = shl i32 %81, 14
  %83 = load %struct.tr_chinfo*, %struct.tr_chinfo** %2, align 8
  %84 = getelementptr inbounds %struct.tr_chinfo, %struct.tr_chinfo* %83, i32 0, i32 5
  %85 = load i32, i32* %84, align 4
  %86 = shl i32 %85, 7
  %87 = or i32 %82, %86
  %88 = load %struct.tr_chinfo*, %struct.tr_chinfo** %2, align 8
  %89 = getelementptr inbounds %struct.tr_chinfo, %struct.tr_chinfo* %88, i32 0, i32 6
  %90 = load i32, i32* %89, align 8
  %91 = or i32 %87, %90
  %92 = getelementptr inbounds i32, i32* %13, i64 3
  store i32 %91, i32* %92, align 4
  %93 = load %struct.tr_chinfo*, %struct.tr_chinfo** %2, align 8
  %94 = getelementptr inbounds %struct.tr_chinfo, %struct.tr_chinfo* %93, i32 0, i32 0
  %95 = load i32, i32* %94, align 8
  %96 = shl i32 %95, 31
  %97 = load %struct.tr_chinfo*, %struct.tr_chinfo** %2, align 8
  %98 = getelementptr inbounds %struct.tr_chinfo, %struct.tr_chinfo* %97, i32 0, i32 4
  %99 = load i32, i32* %98, align 8
  %100 = shl i32 %99, 24
  %101 = or i32 %96, %100
  %102 = load %struct.tr_chinfo*, %struct.tr_chinfo** %2, align 8
  %103 = getelementptr inbounds %struct.tr_chinfo, %struct.tr_chinfo* %102, i32 0, i32 7
  %104 = load i32, i32* %103, align 4
  %105 = shl i32 %104, 16
  %106 = or i32 %101, %105
  %107 = load %struct.tr_chinfo*, %struct.tr_chinfo** %2, align 8
  %108 = getelementptr inbounds %struct.tr_chinfo, %struct.tr_chinfo* %107, i32 0, i32 3
  %109 = load i32, i32* %108, align 4
  %110 = shl i32 %109, 12
  %111 = or i32 %106, %110
  %112 = load %struct.tr_chinfo*, %struct.tr_chinfo** %2, align 8
  %113 = getelementptr inbounds %struct.tr_chinfo, %struct.tr_chinfo* %112, i32 0, i32 8
  %114 = load i32, i32* %113, align 8
  %115 = or i32 %111, %114
  %116 = getelementptr inbounds i32, i32* %13, i64 4
  store i32 %115, i32* %116, align 16
  %117 = load %struct.tr_info*, %struct.tr_info** %3, align 8
  %118 = getelementptr inbounds %struct.tr_info, %struct.tr_info* %117, i32 0, i32 0
  %119 = load i32, i32* %118, align 4
  switch i32 %119, label %198 [
    i32 130, label %120
    i32 131, label %120
    i32 129, label %120
    i32 128, label %152
  ]

120:                                              ; preds = %74, %74, %74
  %121 = load %struct.tr_chinfo*, %struct.tr_chinfo** %2, align 8
  %122 = getelementptr inbounds %struct.tr_chinfo, %struct.tr_chinfo* %121, i32 0, i32 12
  %123 = load i32, i32* %122, align 8
  %124 = and i32 %123, 65535
  store i32 %124, i32* %122, align 8
  %125 = load %struct.tr_chinfo*, %struct.tr_chinfo** %2, align 8
  %126 = getelementptr inbounds %struct.tr_chinfo, %struct.tr_chinfo* %125, i32 0, i32 13
  %127 = load i32, i32* %126, align 4
  %128 = and i32 %127, 65535
  store i32 %128, i32* %126, align 4
  %129 = load %struct.tr_chinfo*, %struct.tr_chinfo** %2, align 8
  %130 = getelementptr inbounds %struct.tr_chinfo, %struct.tr_chinfo* %129, i32 0, i32 12
  %131 = load i32, i32* %130, align 8
  %132 = shl i32 %131, 16
  %133 = load %struct.tr_chinfo*, %struct.tr_chinfo** %2, align 8
  %134 = getelementptr inbounds %struct.tr_chinfo, %struct.tr_chinfo* %133, i32 0, i32 9
  %135 = load i32, i32* %134, align 4
  %136 = shl i32 %135, 4
  %137 = or i32 %132, %136
  %138 = load %struct.tr_chinfo*, %struct.tr_chinfo** %2, align 8
  %139 = getelementptr inbounds %struct.tr_chinfo, %struct.tr_chinfo* %138, i32 0, i32 2
  %140 = load i32, i32* %139, align 8
  %141 = or i32 %137, %140
  %142 = getelementptr inbounds i32, i32* %13, i64 0
  store i32 %141, i32* %142, align 16
  %143 = load %struct.tr_chinfo*, %struct.tr_chinfo** %2, align 8
  %144 = getelementptr inbounds %struct.tr_chinfo, %struct.tr_chinfo* %143, i32 0, i32 13
  %145 = load i32, i32* %144, align 4
  %146 = shl i32 %145, 16
  %147 = load %struct.tr_chinfo*, %struct.tr_chinfo** %2, align 8
  %148 = getelementptr inbounds %struct.tr_chinfo, %struct.tr_chinfo* %147, i32 0, i32 10
  %149 = load i32, i32* %148, align 8
  %150 = or i32 %146, %149
  %151 = getelementptr inbounds i32, i32* %13, i64 2
  store i32 %150, i32* %151, align 8
  br label %198

152:                                              ; preds = %74
  %153 = load %struct.tr_chinfo*, %struct.tr_chinfo** %2, align 8
  %154 = getelementptr inbounds %struct.tr_chinfo, %struct.tr_chinfo* %153, i32 0, i32 12
  %155 = load i32, i32* %154, align 8
  %156 = and i32 %155, 16777215
  store i32 %156, i32* %154, align 8
  %157 = load %struct.tr_chinfo*, %struct.tr_chinfo** %2, align 8
  %158 = getelementptr inbounds %struct.tr_chinfo, %struct.tr_chinfo* %157, i32 0, i32 13
  %159 = load i32, i32* %158, align 4
  %160 = and i32 %159, 16777215
  store i32 %160, i32* %158, align 4
  %161 = load %struct.tr_chinfo*, %struct.tr_chinfo** %2, align 8
  %162 = getelementptr inbounds %struct.tr_chinfo, %struct.tr_chinfo* %161, i32 0, i32 10
  %163 = load i32, i32* %162, align 8
  %164 = and i32 %163, 255
  %165 = shl i32 %164, 24
  %166 = load %struct.tr_chinfo*, %struct.tr_chinfo** %2, align 8
  %167 = getelementptr inbounds %struct.tr_chinfo, %struct.tr_chinfo* %166, i32 0, i32 12
  %168 = load i32, i32* %167, align 8
  %169 = or i32 %165, %168
  %170 = getelementptr inbounds i32, i32* %13, i64 0
  store i32 %169, i32* %170, align 16
  %171 = load %struct.tr_chinfo*, %struct.tr_chinfo** %2, align 8
  %172 = getelementptr inbounds %struct.tr_chinfo, %struct.tr_chinfo* %171, i32 0, i32 10
  %173 = load i32, i32* %172, align 8
  %174 = ashr i32 %173, 8
  %175 = shl i32 %174, 24
  %176 = load %struct.tr_chinfo*, %struct.tr_chinfo** %2, align 8
  %177 = getelementptr inbounds %struct.tr_chinfo, %struct.tr_chinfo* %176, i32 0, i32 13
  %178 = load i32, i32* %177, align 4
  %179 = or i32 %175, %178
  %180 = getelementptr inbounds i32, i32* %13, i64 2
  store i32 %179, i32* %180, align 8
  %181 = load %struct.tr_chinfo*, %struct.tr_chinfo** %2, align 8
  %182 = getelementptr inbounds %struct.tr_chinfo, %struct.tr_chinfo* %181, i32 0, i32 9
  %183 = load i32, i32* %182, align 4
  %184 = shl i32 %183, 20
  %185 = load %struct.tr_chinfo*, %struct.tr_chinfo** %2, align 8
  %186 = getelementptr inbounds %struct.tr_chinfo, %struct.tr_chinfo* %185, i32 0, i32 2
  %187 = load i32, i32* %186, align 8
  %188 = shl i32 %187, 16
  %189 = or i32 %184, %188
  %190 = load %struct.tr_chinfo*, %struct.tr_chinfo** %2, align 8
  %191 = getelementptr inbounds %struct.tr_chinfo, %struct.tr_chinfo* %190, i32 0, i32 1
  %192 = load i32, i32* %191, align 4
  %193 = shl i32 %192, 14
  %194 = or i32 %189, %193
  %195 = getelementptr inbounds i32, i32* %13, i64 3
  %196 = load i32, i32* %195, align 4
  %197 = or i32 %196, %194
  store i32 %197, i32* %195, align 4
  br label %198

198:                                              ; preds = %74, %152, %120
  %199 = load %struct.tr_info*, %struct.tr_info** %3, align 8
  %200 = getelementptr inbounds %struct.tr_info, %struct.tr_info* %199, i32 0, i32 1
  %201 = load i32, i32* %200, align 4
  %202 = call i32 @snd_mtxlock(i32 %201)
  %203 = load %struct.tr_chinfo*, %struct.tr_chinfo** %2, align 8
  %204 = call i32 @tr_selch(%struct.tr_chinfo* %203)
  store i32 0, i32* %6, align 4
  br label %205

205:                                              ; preds = %221, %198
  %206 = load i32, i32* %6, align 4
  %207 = load i32, i32* @TR_CHN_REGS, align 4
  %208 = icmp slt i32 %206, %207
  br i1 %208, label %209, label %224

209:                                              ; preds = %205
  %210 = load %struct.tr_info*, %struct.tr_info** %3, align 8
  %211 = load i64, i64* @TR_REG_CHNBASE, align 8
  %212 = load i32, i32* %6, align 4
  %213 = shl i32 %212, 2
  %214 = sext i32 %213 to i64
  %215 = add nsw i64 %211, %214
  %216 = load i32, i32* %6, align 4
  %217 = sext i32 %216 to i64
  %218 = getelementptr inbounds i32, i32* %13, i64 %217
  %219 = load i32, i32* %218, align 4
  %220 = call i32 @tr_wr(%struct.tr_info* %210, i64 %215, i32 %219, i32 4)
  br label %221

221:                                              ; preds = %209
  %222 = load i32, i32* %6, align 4
  %223 = add nsw i32 %222, 1
  store i32 %223, i32* %6, align 4
  br label %205

224:                                              ; preds = %205
  %225 = load %struct.tr_info*, %struct.tr_info** %3, align 8
  %226 = getelementptr inbounds %struct.tr_info, %struct.tr_info* %225, i32 0, i32 1
  %227 = load i32, i32* %226, align 4
  %228 = call i32 @snd_mtxunlock(i32 %227)
  %229 = load i8*, i8** %4, align 8
  call void @llvm.stackrestore(i8* %229)
  ret void
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i32 @snd_mtxlock(i32) #2

declare dso_local i32 @tr_selch(%struct.tr_chinfo*) #2

declare dso_local i32 @tr_wr(%struct.tr_info*, i64, i32, i32) #2

declare dso_local i32 @snd_mtxunlock(i32) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
