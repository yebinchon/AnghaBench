; ModuleID = '/home/carl/AnghaBench/freebsd/usr.sbin/bhyve/extr_gdb.c_gdb_read_regs.c'
source_filename = "/home/carl/AnghaBench/freebsd/usr.sbin/bhyve/extr_gdb.c_gdb_read_regs.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@gdb_regset = common dso_local global i32* null, align 8
@ctx = common dso_local global i32 0, align 4
@cur_vcpu = common dso_local global i32 0, align 4
@errno = common dso_local global i32 0, align 4
@gdb_regsize = common dso_local global i32* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void ()* @gdb_read_regs to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @gdb_read_regs() #0 {
  %1 = alloca i8*, align 8
  %2 = alloca i64, align 8
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = load i32*, i32** @gdb_regset, align 8
  %6 = call i32 @nitems(i32* %5)
  %7 = zext i32 %6 to i64
  %8 = call i8* @llvm.stacksave()
  store i8* %8, i8** %1, align 8
  %9 = alloca i32, i64 %7, align 16
  store i64 %7, i64* %2, align 8
  %10 = load i32, i32* @ctx, align 4
  %11 = load i32, i32* @cur_vcpu, align 4
  %12 = load i32*, i32** @gdb_regset, align 8
  %13 = call i32 @nitems(i32* %12)
  %14 = load i32*, i32** @gdb_regset, align 8
  %15 = call i32 @vm_get_register_set(i32 %10, i32 %11, i32 %13, i32* %14, i32* %9)
  %16 = icmp eq i32 %15, -1
  br i1 %16, label %17, label %20

17:                                               ; preds = %0
  %18 = load i32, i32* @errno, align 4
  %19 = call i32 @send_error(i32 %18)
  store i32 1, i32* %4, align 4
  br label %42

20:                                               ; preds = %0
  %21 = call i32 (...) @start_packet()
  store i32 0, i32* %3, align 4
  br label %22

22:                                               ; preds = %37, %20
  %23 = load i32, i32* %3, align 4
  %24 = call i32 @nitems(i32* %9)
  %25 = icmp slt i32 %23, %24
  br i1 %25, label %26, label %40

26:                                               ; preds = %22
  %27 = load i32, i32* %3, align 4
  %28 = sext i32 %27 to i64
  %29 = getelementptr inbounds i32, i32* %9, i64 %28
  %30 = load i32, i32* %29, align 4
  %31 = load i32*, i32** @gdb_regsize, align 8
  %32 = load i32, i32* %3, align 4
  %33 = sext i32 %32 to i64
  %34 = getelementptr inbounds i32, i32* %31, i64 %33
  %35 = load i32, i32* %34, align 4
  %36 = call i32 @append_unsigned_native(i32 %30, i32 %35)
  br label %37

37:                                               ; preds = %26
  %38 = load i32, i32* %3, align 4
  %39 = add nsw i32 %38, 1
  store i32 %39, i32* %3, align 4
  br label %22

40:                                               ; preds = %22
  %41 = call i32 (...) @finish_packet()
  store i32 0, i32* %4, align 4
  br label %42

42:                                               ; preds = %40, %17
  %43 = load i8*, i8** %1, align 8
  call void @llvm.stackrestore(i8* %43)
  %44 = load i32, i32* %4, align 4
  switch i32 %44, label %46 [
    i32 0, label %45
    i32 1, label %45
  ]

45:                                               ; preds = %42, %42
  ret void

46:                                               ; preds = %42
  unreachable
}

declare dso_local i32 @nitems(i32*) #1

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #2

declare dso_local i32 @vm_get_register_set(i32, i32, i32, i32*, i32*) #1

declare dso_local i32 @send_error(i32) #1

declare dso_local i32 @start_packet(...) #1

declare dso_local i32 @append_unsigned_native(i32, i32) #1

declare dso_local i32 @finish_packet(...) #1

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
