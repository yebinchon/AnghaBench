; ModuleID = '/home/carl/AnghaBench/freebsd/sys/opencrypto/extr_crypto.c_keybuf_init.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/opencrypto/extr_crypto.c_keybuf_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.keybuf = type { i32 }

@.str = private unnamed_addr constant [11 x i8] c"elf kernel\00", align 1
@.str.1 = private unnamed_addr constant [13 x i8] c"elf64 kernel\00", align 1
@MODINFO_METADATA = common dso_local global i32 0, align 4
@MODINFOMD_KEYBUF = common dso_local global i32 0, align 4
@keybuf = common dso_local global %struct.keybuf* null, align 8
@empty_keybuf = common dso_local global %struct.keybuf zeroinitializer, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void ()* @keybuf_init to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @keybuf_init() #0 {
  %1 = alloca i32*, align 8
  %2 = call i32* @preload_search_by_type(i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str, i64 0, i64 0))
  store i32* %2, i32** %1, align 8
  %3 = load i32*, i32** %1, align 8
  %4 = icmp eq i32* %3, null
  br i1 %4, label %5, label %7

5:                                                ; preds = %0
  %6 = call i32* @preload_search_by_type(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.1, i64 0, i64 0))
  store i32* %6, i32** %1, align 8
  br label %7

7:                                                ; preds = %5, %0
  %8 = load i32*, i32** %1, align 8
  %9 = load i32, i32* @MODINFO_METADATA, align 4
  %10 = load i32, i32* @MODINFOMD_KEYBUF, align 4
  %11 = or i32 %9, %10
  %12 = call i64 @preload_search_info(i32* %8, i32 %11)
  %13 = inttoptr i64 %12 to %struct.keybuf*
  store %struct.keybuf* %13, %struct.keybuf** @keybuf, align 8
  %14 = load %struct.keybuf*, %struct.keybuf** @keybuf, align 8
  %15 = icmp eq %struct.keybuf* %14, null
  br i1 %15, label %16, label %17

16:                                               ; preds = %7
  store %struct.keybuf* @empty_keybuf, %struct.keybuf** @keybuf, align 8
  br label %17

17:                                               ; preds = %16, %7
  ret void
}

declare dso_local i32* @preload_search_by_type(i8*) #1

declare dso_local i64 @preload_search_info(i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
