; ModuleID = '/home/carl/AnghaBench/freebsd/sys/sparc64/sparc64/extr_dump_machdep.c_reg_write.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/sparc64/sparc64/extr_dump_machdep.c_reg_write.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dumperinfo = type { i32 }
%struct.sparc64_dump_reg = type { i32, i64, i32 }

@fileofs = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.dumperinfo*, i32, i64)* @reg_write to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @reg_write(%struct.dumperinfo* %0, i32 %1, i64 %2) #0 {
  %4 = alloca %struct.dumperinfo*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i64, align 8
  %7 = alloca %struct.sparc64_dump_reg, align 8
  store %struct.dumperinfo* %0, %struct.dumperinfo** %4, align 8
  store i32 %1, i32* %5, align 4
  store i64 %2, i64* %6, align 8
  %8 = load i32, i32* %5, align 4
  %9 = getelementptr inbounds %struct.sparc64_dump_reg, %struct.sparc64_dump_reg* %7, i32 0, i32 2
  store i32 %8, i32* %9, align 8
  %10 = load i64, i64* %6, align 8
  %11 = getelementptr inbounds %struct.sparc64_dump_reg, %struct.sparc64_dump_reg* %7, i32 0, i32 1
  store i64 %10, i64* %11, align 8
  %12 = load i32, i32* @fileofs, align 4
  %13 = getelementptr inbounds %struct.sparc64_dump_reg, %struct.sparc64_dump_reg* %7, i32 0, i32 0
  store i32 %12, i32* %13, align 8
  %14 = load i64, i64* %6, align 8
  %15 = load i32, i32* @fileofs, align 4
  %16 = sext i32 %15 to i64
  %17 = add nsw i64 %16, %14
  %18 = trunc i64 %17 to i32
  store i32 %18, i32* @fileofs, align 4
  %19 = load %struct.dumperinfo*, %struct.dumperinfo** %4, align 8
  %20 = bitcast %struct.sparc64_dump_reg* %7 to i8*
  %21 = call i32 @dumpsys_buf_write(%struct.dumperinfo* %19, i8* %20, i32 24)
  ret i32 %21
}

declare dso_local i32 @dumpsys_buf_write(%struct.dumperinfo*, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
