; ModuleID = '/home/carl/AnghaBench/freebsd/usr.bin/ipcs/extr_ipcs.c_fmt_perm.c'
source_filename = "/home/carl/AnghaBench/freebsd/usr.bin/ipcs/extr_ipcs.c_fmt_perm.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@fmt_perm.buffer = internal global [100 x i8] zeroinitializer, align 16

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i8* @fmt_perm(i32 %0) #0 {
  %2 = alloca i32, align 4
  store i32 %0, i32* %2, align 4
  store i8 45, i8* getelementptr inbounds ([100 x i8], [100 x i8]* @fmt_perm.buffer, i64 0, i64 0), align 16
  store i8 45, i8* getelementptr inbounds ([100 x i8], [100 x i8]* @fmt_perm.buffer, i64 0, i64 1), align 1
  %3 = load i32, i32* %2, align 4
  %4 = and i32 %3, 256
  %5 = icmp ne i32 %4, 0
  %6 = zext i1 %5 to i64
  %7 = select i1 %5, i32 114, i32 45
  %8 = trunc i32 %7 to i8
  store i8 %8, i8* getelementptr inbounds ([100 x i8], [100 x i8]* @fmt_perm.buffer, i64 0, i64 2), align 2
  %9 = load i32, i32* %2, align 4
  %10 = and i32 %9, 128
  %11 = icmp ne i32 %10, 0
  %12 = zext i1 %11 to i64
  %13 = select i1 %11, i32 119, i32 45
  %14 = trunc i32 %13 to i8
  store i8 %14, i8* getelementptr inbounds ([100 x i8], [100 x i8]* @fmt_perm.buffer, i64 0, i64 3), align 1
  %15 = load i32, i32* %2, align 4
  %16 = and i32 %15, 64
  %17 = icmp ne i32 %16, 0
  %18 = zext i1 %17 to i64
  %19 = select i1 %17, i32 97, i32 45
  %20 = trunc i32 %19 to i8
  store i8 %20, i8* getelementptr inbounds ([100 x i8], [100 x i8]* @fmt_perm.buffer, i64 0, i64 4), align 4
  %21 = load i32, i32* %2, align 4
  %22 = and i32 %21, 32
  %23 = icmp ne i32 %22, 0
  %24 = zext i1 %23 to i64
  %25 = select i1 %23, i32 114, i32 45
  %26 = trunc i32 %25 to i8
  store i8 %26, i8* getelementptr inbounds ([100 x i8], [100 x i8]* @fmt_perm.buffer, i64 0, i64 5), align 1
  %27 = load i32, i32* %2, align 4
  %28 = and i32 %27, 16
  %29 = icmp ne i32 %28, 0
  %30 = zext i1 %29 to i64
  %31 = select i1 %29, i32 119, i32 45
  %32 = trunc i32 %31 to i8
  store i8 %32, i8* getelementptr inbounds ([100 x i8], [100 x i8]* @fmt_perm.buffer, i64 0, i64 6), align 2
  %33 = load i32, i32* %2, align 4
  %34 = and i32 %33, 8
  %35 = icmp ne i32 %34, 0
  %36 = zext i1 %35 to i64
  %37 = select i1 %35, i32 97, i32 45
  %38 = trunc i32 %37 to i8
  store i8 %38, i8* getelementptr inbounds ([100 x i8], [100 x i8]* @fmt_perm.buffer, i64 0, i64 7), align 1
  %39 = load i32, i32* %2, align 4
  %40 = and i32 %39, 4
  %41 = icmp ne i32 %40, 0
  %42 = zext i1 %41 to i64
  %43 = select i1 %41, i32 114, i32 45
  %44 = trunc i32 %43 to i8
  store i8 %44, i8* getelementptr inbounds ([100 x i8], [100 x i8]* @fmt_perm.buffer, i64 0, i64 8), align 8
  %45 = load i32, i32* %2, align 4
  %46 = and i32 %45, 2
  %47 = icmp ne i32 %46, 0
  %48 = zext i1 %47 to i64
  %49 = select i1 %47, i32 119, i32 45
  %50 = trunc i32 %49 to i8
  store i8 %50, i8* getelementptr inbounds ([100 x i8], [100 x i8]* @fmt_perm.buffer, i64 0, i64 9), align 1
  %51 = load i32, i32* %2, align 4
  %52 = and i32 %51, 1
  %53 = icmp ne i32 %52, 0
  %54 = zext i1 %53 to i64
  %55 = select i1 %53, i32 97, i32 45
  %56 = trunc i32 %55 to i8
  store i8 %56, i8* getelementptr inbounds ([100 x i8], [100 x i8]* @fmt_perm.buffer, i64 0, i64 10), align 2
  store i8 0, i8* getelementptr inbounds ([100 x i8], [100 x i8]* @fmt_perm.buffer, i64 0, i64 11), align 1
  ret i8* getelementptr inbounds ([100 x i8], [100 x i8]* @fmt_perm.buffer, i64 0, i64 0)
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
