; ModuleID = '/home/carl/AnghaBench/freebsd/usr.sbin/ppp/extr_ncpaddr.c_bits2mask4.c'
source_filename = "/home/carl/AnghaBench/freebsd/usr.sbin/ppp/extr_ncpaddr.c_bits2mask4.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.in_addr = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32)* @bits2mask4 to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @bits2mask4(i32 %0) #0 {
  %2 = alloca %struct.in_addr, align 4
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  store i32 %0, i32* %3, align 4
  store i32 -2147483648, i32* %4, align 4
  %5 = getelementptr inbounds %struct.in_addr, %struct.in_addr* %2, i32 0, i32 0
  store i32 0, i32* %5, align 4
  br label %6

6:                                                ; preds = %9, %1
  %7 = load i32, i32* %3, align 4
  %8 = icmp ne i32 %7, 0
  br i1 %8, label %9, label %18

9:                                                ; preds = %6
  %10 = load i32, i32* %4, align 4
  %11 = getelementptr inbounds %struct.in_addr, %struct.in_addr* %2, i32 0, i32 0
  %12 = load i32, i32* %11, align 4
  %13 = or i32 %12, %10
  store i32 %13, i32* %11, align 4
  %14 = load i32, i32* %4, align 4
  %15 = ashr i32 %14, 1
  store i32 %15, i32* %4, align 4
  %16 = load i32, i32* %3, align 4
  %17 = add nsw i32 %16, -1
  store i32 %17, i32* %3, align 4
  br label %6

18:                                               ; preds = %6
  %19 = getelementptr inbounds %struct.in_addr, %struct.in_addr* %2, i32 0, i32 0
  %20 = load i32, i32* %19, align 4
  %21 = call i32 @htonl(i32 %20)
  %22 = getelementptr inbounds %struct.in_addr, %struct.in_addr* %2, i32 0, i32 0
  store i32 %21, i32* %22, align 4
  %23 = getelementptr inbounds %struct.in_addr, %struct.in_addr* %2, i32 0, i32 0
  %24 = load i32, i32* %23, align 4
  ret i32 %24
}

declare dso_local i32 @htonl(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
