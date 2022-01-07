; ModuleID = '/home/carl/AnghaBench/freebsd/usr.sbin/bhyve/extr_vga.c_vga_mem_handler.c'
source_filename = "/home/carl/AnghaBench/freebsd/usr.sbin/bhyve/extr_vga.c_vga_mem_handler.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.vmctx = type { i32 }

@MEM_F_WRITE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.vmctx*, i32, i32, i32, i32, i32*, i8*, i64)* @vga_mem_handler to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @vga_mem_handler(%struct.vmctx* %0, i32 %1, i32 %2, i32 %3, i32 %4, i32* %5, i8* %6, i64 %7) #0 {
  %9 = alloca %struct.vmctx*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32*, align 8
  %15 = alloca i8*, align 8
  %16 = alloca i64, align 8
  store %struct.vmctx* %0, %struct.vmctx** %9, align 8
  store i32 %1, i32* %10, align 4
  store i32 %2, i32* %11, align 4
  store i32 %3, i32* %12, align 4
  store i32 %4, i32* %13, align 4
  store i32* %5, i32** %14, align 8
  store i8* %6, i8** %15, align 8
  store i64 %7, i64* %16, align 8
  %17 = load i32, i32* %11, align 4
  %18 = load i32, i32* @MEM_F_WRITE, align 4
  %19 = icmp eq i32 %17, %18
  br i1 %19, label %20, label %139

20:                                               ; preds = %8
  %21 = load i32, i32* %13, align 4
  switch i32 %21, label %138 [
    i32 1, label %22
    i32 2, label %29
    i32 4, label %44
    i32 8, label %75
  ]

22:                                               ; preds = %20
  %23 = load %struct.vmctx*, %struct.vmctx** %9, align 8
  %24 = load i32, i32* %12, align 4
  %25 = load i32*, i32** %14, align 8
  %26 = load i32, i32* %25, align 4
  %27 = load i8*, i8** %15, align 8
  %28 = call i32 @vga_mem_wr_handler(%struct.vmctx* %23, i32 %24, i32 %26, i8* %27)
  br label %138

29:                                               ; preds = %20
  %30 = load %struct.vmctx*, %struct.vmctx** %9, align 8
  %31 = load i32, i32* %12, align 4
  %32 = load i32*, i32** %14, align 8
  %33 = load i32, i32* %32, align 4
  %34 = load i8*, i8** %15, align 8
  %35 = call i32 @vga_mem_wr_handler(%struct.vmctx* %30, i32 %31, i32 %33, i8* %34)
  %36 = load %struct.vmctx*, %struct.vmctx** %9, align 8
  %37 = load i32, i32* %12, align 4
  %38 = add nsw i32 %37, 1
  %39 = load i32*, i32** %14, align 8
  %40 = load i32, i32* %39, align 4
  %41 = ashr i32 %40, 8
  %42 = load i8*, i8** %15, align 8
  %43 = call i32 @vga_mem_wr_handler(%struct.vmctx* %36, i32 %38, i32 %41, i8* %42)
  br label %138

44:                                               ; preds = %20
  %45 = load %struct.vmctx*, %struct.vmctx** %9, align 8
  %46 = load i32, i32* %12, align 4
  %47 = load i32*, i32** %14, align 8
  %48 = load i32, i32* %47, align 4
  %49 = load i8*, i8** %15, align 8
  %50 = call i32 @vga_mem_wr_handler(%struct.vmctx* %45, i32 %46, i32 %48, i8* %49)
  %51 = load %struct.vmctx*, %struct.vmctx** %9, align 8
  %52 = load i32, i32* %12, align 4
  %53 = add nsw i32 %52, 1
  %54 = load i32*, i32** %14, align 8
  %55 = load i32, i32* %54, align 4
  %56 = ashr i32 %55, 8
  %57 = load i8*, i8** %15, align 8
  %58 = call i32 @vga_mem_wr_handler(%struct.vmctx* %51, i32 %53, i32 %56, i8* %57)
  %59 = load %struct.vmctx*, %struct.vmctx** %9, align 8
  %60 = load i32, i32* %12, align 4
  %61 = add nsw i32 %60, 2
  %62 = load i32*, i32** %14, align 8
  %63 = load i32, i32* %62, align 4
  %64 = ashr i32 %63, 16
  %65 = load i8*, i8** %15, align 8
  %66 = call i32 @vga_mem_wr_handler(%struct.vmctx* %59, i32 %61, i32 %64, i8* %65)
  %67 = load %struct.vmctx*, %struct.vmctx** %9, align 8
  %68 = load i32, i32* %12, align 4
  %69 = add nsw i32 %68, 3
  %70 = load i32*, i32** %14, align 8
  %71 = load i32, i32* %70, align 4
  %72 = ashr i32 %71, 24
  %73 = load i8*, i8** %15, align 8
  %74 = call i32 @vga_mem_wr_handler(%struct.vmctx* %67, i32 %69, i32 %72, i8* %73)
  br label %138

75:                                               ; preds = %20
  %76 = load %struct.vmctx*, %struct.vmctx** %9, align 8
  %77 = load i32, i32* %12, align 4
  %78 = load i32*, i32** %14, align 8
  %79 = load i32, i32* %78, align 4
  %80 = load i8*, i8** %15, align 8
  %81 = call i32 @vga_mem_wr_handler(%struct.vmctx* %76, i32 %77, i32 %79, i8* %80)
  %82 = load %struct.vmctx*, %struct.vmctx** %9, align 8
  %83 = load i32, i32* %12, align 4
  %84 = add nsw i32 %83, 1
  %85 = load i32*, i32** %14, align 8
  %86 = load i32, i32* %85, align 4
  %87 = ashr i32 %86, 8
  %88 = load i8*, i8** %15, align 8
  %89 = call i32 @vga_mem_wr_handler(%struct.vmctx* %82, i32 %84, i32 %87, i8* %88)
  %90 = load %struct.vmctx*, %struct.vmctx** %9, align 8
  %91 = load i32, i32* %12, align 4
  %92 = add nsw i32 %91, 2
  %93 = load i32*, i32** %14, align 8
  %94 = load i32, i32* %93, align 4
  %95 = ashr i32 %94, 16
  %96 = load i8*, i8** %15, align 8
  %97 = call i32 @vga_mem_wr_handler(%struct.vmctx* %90, i32 %92, i32 %95, i8* %96)
  %98 = load %struct.vmctx*, %struct.vmctx** %9, align 8
  %99 = load i32, i32* %12, align 4
  %100 = add nsw i32 %99, 3
  %101 = load i32*, i32** %14, align 8
  %102 = load i32, i32* %101, align 4
  %103 = ashr i32 %102, 24
  %104 = load i8*, i8** %15, align 8
  %105 = call i32 @vga_mem_wr_handler(%struct.vmctx* %98, i32 %100, i32 %103, i8* %104)
  %106 = load %struct.vmctx*, %struct.vmctx** %9, align 8
  %107 = load i32, i32* %12, align 4
  %108 = add nsw i32 %107, 4
  %109 = load i32*, i32** %14, align 8
  %110 = load i32, i32* %109, align 4
  %111 = ashr i32 %110, 32
  %112 = load i8*, i8** %15, align 8
  %113 = call i32 @vga_mem_wr_handler(%struct.vmctx* %106, i32 %108, i32 %111, i8* %112)
  %114 = load %struct.vmctx*, %struct.vmctx** %9, align 8
  %115 = load i32, i32* %12, align 4
  %116 = add nsw i32 %115, 5
  %117 = load i32*, i32** %14, align 8
  %118 = load i32, i32* %117, align 4
  %119 = ashr i32 %118, 40
  %120 = load i8*, i8** %15, align 8
  %121 = call i32 @vga_mem_wr_handler(%struct.vmctx* %114, i32 %116, i32 %119, i8* %120)
  %122 = load %struct.vmctx*, %struct.vmctx** %9, align 8
  %123 = load i32, i32* %12, align 4
  %124 = add nsw i32 %123, 6
  %125 = load i32*, i32** %14, align 8
  %126 = load i32, i32* %125, align 4
  %127 = ashr i32 %126, 48
  %128 = load i8*, i8** %15, align 8
  %129 = call i32 @vga_mem_wr_handler(%struct.vmctx* %122, i32 %124, i32 %127, i8* %128)
  %130 = load %struct.vmctx*, %struct.vmctx** %9, align 8
  %131 = load i32, i32* %12, align 4
  %132 = add nsw i32 %131, 7
  %133 = load i32*, i32** %14, align 8
  %134 = load i32, i32* %133, align 4
  %135 = ashr i32 %134, 56
  %136 = load i8*, i8** %15, align 8
  %137 = call i32 @vga_mem_wr_handler(%struct.vmctx* %130, i32 %132, i32 %135, i8* %136)
  br label %138

138:                                              ; preds = %20, %75, %44, %29, %22
  br label %265

139:                                              ; preds = %8
  %140 = load i32, i32* %13, align 4
  switch i32 %140, label %264 [
    i32 1, label %141
    i32 2, label %147
    i32 4, label %162
    i32 8, label %195
  ]

141:                                              ; preds = %139
  %142 = load %struct.vmctx*, %struct.vmctx** %9, align 8
  %143 = load i32, i32* %12, align 4
  %144 = load i8*, i8** %15, align 8
  %145 = call i32 @vga_mem_rd_handler(%struct.vmctx* %142, i32 %143, i8* %144)
  %146 = load i32*, i32** %14, align 8
  store i32 %145, i32* %146, align 4
  br label %264

147:                                              ; preds = %139
  %148 = load %struct.vmctx*, %struct.vmctx** %9, align 8
  %149 = load i32, i32* %12, align 4
  %150 = load i8*, i8** %15, align 8
  %151 = call i32 @vga_mem_rd_handler(%struct.vmctx* %148, i32 %149, i8* %150)
  %152 = load i32*, i32** %14, align 8
  store i32 %151, i32* %152, align 4
  %153 = load %struct.vmctx*, %struct.vmctx** %9, align 8
  %154 = load i32, i32* %12, align 4
  %155 = add nsw i32 %154, 1
  %156 = load i8*, i8** %15, align 8
  %157 = call i32 @vga_mem_rd_handler(%struct.vmctx* %153, i32 %155, i8* %156)
  %158 = shl i32 %157, 8
  %159 = load i32*, i32** %14, align 8
  %160 = load i32, i32* %159, align 4
  %161 = or i32 %160, %158
  store i32 %161, i32* %159, align 4
  br label %264

162:                                              ; preds = %139
  %163 = load %struct.vmctx*, %struct.vmctx** %9, align 8
  %164 = load i32, i32* %12, align 4
  %165 = load i8*, i8** %15, align 8
  %166 = call i32 @vga_mem_rd_handler(%struct.vmctx* %163, i32 %164, i8* %165)
  %167 = load i32*, i32** %14, align 8
  store i32 %166, i32* %167, align 4
  %168 = load %struct.vmctx*, %struct.vmctx** %9, align 8
  %169 = load i32, i32* %12, align 4
  %170 = add nsw i32 %169, 1
  %171 = load i8*, i8** %15, align 8
  %172 = call i32 @vga_mem_rd_handler(%struct.vmctx* %168, i32 %170, i8* %171)
  %173 = shl i32 %172, 8
  %174 = load i32*, i32** %14, align 8
  %175 = load i32, i32* %174, align 4
  %176 = or i32 %175, %173
  store i32 %176, i32* %174, align 4
  %177 = load %struct.vmctx*, %struct.vmctx** %9, align 8
  %178 = load i32, i32* %12, align 4
  %179 = add nsw i32 %178, 2
  %180 = load i8*, i8** %15, align 8
  %181 = call i32 @vga_mem_rd_handler(%struct.vmctx* %177, i32 %179, i8* %180)
  %182 = shl i32 %181, 16
  %183 = load i32*, i32** %14, align 8
  %184 = load i32, i32* %183, align 4
  %185 = or i32 %184, %182
  store i32 %185, i32* %183, align 4
  %186 = load %struct.vmctx*, %struct.vmctx** %9, align 8
  %187 = load i32, i32* %12, align 4
  %188 = add nsw i32 %187, 3
  %189 = load i8*, i8** %15, align 8
  %190 = call i32 @vga_mem_rd_handler(%struct.vmctx* %186, i32 %188, i8* %189)
  %191 = shl i32 %190, 24
  %192 = load i32*, i32** %14, align 8
  %193 = load i32, i32* %192, align 4
  %194 = or i32 %193, %191
  store i32 %194, i32* %192, align 4
  br label %264

195:                                              ; preds = %139
  %196 = load %struct.vmctx*, %struct.vmctx** %9, align 8
  %197 = load i32, i32* %12, align 4
  %198 = load i8*, i8** %15, align 8
  %199 = call i32 @vga_mem_rd_handler(%struct.vmctx* %196, i32 %197, i8* %198)
  %200 = load i32*, i32** %14, align 8
  store i32 %199, i32* %200, align 4
  %201 = load %struct.vmctx*, %struct.vmctx** %9, align 8
  %202 = load i32, i32* %12, align 4
  %203 = add nsw i32 %202, 1
  %204 = load i8*, i8** %15, align 8
  %205 = call i32 @vga_mem_rd_handler(%struct.vmctx* %201, i32 %203, i8* %204)
  %206 = shl i32 %205, 8
  %207 = load i32*, i32** %14, align 8
  %208 = load i32, i32* %207, align 4
  %209 = or i32 %208, %206
  store i32 %209, i32* %207, align 4
  %210 = load %struct.vmctx*, %struct.vmctx** %9, align 8
  %211 = load i32, i32* %12, align 4
  %212 = add nsw i32 %211, 2
  %213 = load i8*, i8** %15, align 8
  %214 = call i32 @vga_mem_rd_handler(%struct.vmctx* %210, i32 %212, i8* %213)
  %215 = shl i32 %214, 16
  %216 = load i32*, i32** %14, align 8
  %217 = load i32, i32* %216, align 4
  %218 = or i32 %217, %215
  store i32 %218, i32* %216, align 4
  %219 = load %struct.vmctx*, %struct.vmctx** %9, align 8
  %220 = load i32, i32* %12, align 4
  %221 = add nsw i32 %220, 3
  %222 = load i8*, i8** %15, align 8
  %223 = call i32 @vga_mem_rd_handler(%struct.vmctx* %219, i32 %221, i8* %222)
  %224 = shl i32 %223, 24
  %225 = load i32*, i32** %14, align 8
  %226 = load i32, i32* %225, align 4
  %227 = or i32 %226, %224
  store i32 %227, i32* %225, align 4
  %228 = load %struct.vmctx*, %struct.vmctx** %9, align 8
  %229 = load i32, i32* %12, align 4
  %230 = add nsw i32 %229, 4
  %231 = load i8*, i8** %15, align 8
  %232 = call i32 @vga_mem_rd_handler(%struct.vmctx* %228, i32 %230, i8* %231)
  %233 = shl i32 %232, 32
  %234 = load i32*, i32** %14, align 8
  %235 = load i32, i32* %234, align 4
  %236 = or i32 %235, %233
  store i32 %236, i32* %234, align 4
  %237 = load %struct.vmctx*, %struct.vmctx** %9, align 8
  %238 = load i32, i32* %12, align 4
  %239 = add nsw i32 %238, 5
  %240 = load i8*, i8** %15, align 8
  %241 = call i32 @vga_mem_rd_handler(%struct.vmctx* %237, i32 %239, i8* %240)
  %242 = shl i32 %241, 40
  %243 = load i32*, i32** %14, align 8
  %244 = load i32, i32* %243, align 4
  %245 = or i32 %244, %242
  store i32 %245, i32* %243, align 4
  %246 = load %struct.vmctx*, %struct.vmctx** %9, align 8
  %247 = load i32, i32* %12, align 4
  %248 = add nsw i32 %247, 6
  %249 = load i8*, i8** %15, align 8
  %250 = call i32 @vga_mem_rd_handler(%struct.vmctx* %246, i32 %248, i8* %249)
  %251 = shl i32 %250, 48
  %252 = load i32*, i32** %14, align 8
  %253 = load i32, i32* %252, align 4
  %254 = or i32 %253, %251
  store i32 %254, i32* %252, align 4
  %255 = load %struct.vmctx*, %struct.vmctx** %9, align 8
  %256 = load i32, i32* %12, align 4
  %257 = add nsw i32 %256, 7
  %258 = load i8*, i8** %15, align 8
  %259 = call i32 @vga_mem_rd_handler(%struct.vmctx* %255, i32 %257, i8* %258)
  %260 = shl i32 %259, 56
  %261 = load i32*, i32** %14, align 8
  %262 = load i32, i32* %261, align 4
  %263 = or i32 %262, %260
  store i32 %263, i32* %261, align 4
  br label %264

264:                                              ; preds = %139, %195, %162, %147, %141
  br label %265

265:                                              ; preds = %264, %138
  ret i32 0
}

declare dso_local i32 @vga_mem_wr_handler(%struct.vmctx*, i32, i32, i8*) #1

declare dso_local i32 @vga_mem_rd_handler(%struct.vmctx*, i32, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
