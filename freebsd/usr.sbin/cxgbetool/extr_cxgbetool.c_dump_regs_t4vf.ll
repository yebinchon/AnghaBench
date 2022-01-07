; ModuleID = '/home/carl/AnghaBench/freebsd/usr.sbin/cxgbetool/extr_cxgbetool.c_dump_regs_t4vf.c'
source_filename = "/home/carl/AnghaBench/freebsd/usr.sbin/cxgbetool/extr_cxgbetool.c_dump_regs_t4vf.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mod_regs = type { i8*, i32 }

@dump_regs_t4vf.t4vf_mod = internal global [5 x %struct.mod_regs] [%struct.mod_regs { i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str, i32 0, i32 0), i32 128 }, %struct.mod_regs { i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.1, i32 0, i32 0), i32 130 }, %struct.mod_regs { i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.2, i32 0, i32 0), i32 129 }, %struct.mod_regs { i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.3, i32 0, i32 0), i32 131 }, %struct.mod_regs { i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.4, i32 0, i32 0), i32 132 }], align 16
@.str = private unnamed_addr constant [4 x i8] c"sge\00", align 1
@.str.1 = private unnamed_addr constant [4 x i8] c"mps\00", align 1
@.str.2 = private unnamed_addr constant [3 x i8] c"pl\00", align 1
@.str.3 = private unnamed_addr constant [7 x i8] c"mbdata\00", align 1
@.str.4 = private unnamed_addr constant [4 x i8] c"cim\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i8**, i32*)* @dump_regs_t4vf to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @dump_regs_t4vf(i32 %0, i8** %1, i32* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i8**, align 8
  %6 = alloca i32*, align 8
  store i32 %0, i32* %4, align 4
  store i8** %1, i8*** %5, align 8
  store i32* %2, i32** %6, align 8
  %7 = load i32, i32* %4, align 4
  %8 = load i8**, i8*** %5, align 8
  %9 = load i32*, i32** %6, align 8
  %10 = call i32 @nitems(%struct.mod_regs* getelementptr inbounds ([5 x %struct.mod_regs], [5 x %struct.mod_regs]* @dump_regs_t4vf.t4vf_mod, i64 0, i64 0))
  %11 = call i32 @dump_regs_table(i32 %7, i8** %8, i32* %9, %struct.mod_regs* getelementptr inbounds ([5 x %struct.mod_regs], [5 x %struct.mod_regs]* @dump_regs_t4vf.t4vf_mod, i64 0, i64 0), i32 %10)
  ret i32 %11
}

declare dso_local i32 @dump_regs_table(i32, i8**, i32*, %struct.mod_regs*, i32) #1

declare dso_local i32 @nitems(%struct.mod_regs*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
