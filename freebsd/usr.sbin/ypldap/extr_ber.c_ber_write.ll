; ModuleID = '/home/carl/AnghaBench/freebsd/usr.sbin/ypldap/extr_ber.c_ber_write.c'
source_filename = "/home/carl/AnghaBench/freebsd/usr.sbin/ypldap/extr_ber.c_ber_write.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ber = type { i64, i64 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.ber*, i8*, i64)* @ber_write to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @ber_write(%struct.ber* %0, i8* %1, i64 %2) #0 {
  %4 = alloca %struct.ber*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i64, align 8
  store %struct.ber* %0, %struct.ber** %4, align 8
  store i8* %1, i8** %5, align 8
  store i64 %2, i64* %6, align 8
  %7 = load %struct.ber*, %struct.ber** %4, align 8
  %8 = getelementptr inbounds %struct.ber, %struct.ber* %7, i32 0, i32 0
  %9 = load i64, i64* %8, align 8
  %10 = load i64, i64* %6, align 8
  %11 = add i64 %9, %10
  %12 = load %struct.ber*, %struct.ber** %4, align 8
  %13 = getelementptr inbounds %struct.ber, %struct.ber* %12, i32 0, i32 1
  %14 = load i64, i64* %13, align 8
  %15 = icmp ule i64 %11, %14
  br i1 %15, label %16, label %23

16:                                               ; preds = %3
  %17 = load i8*, i8** %5, align 8
  %18 = load %struct.ber*, %struct.ber** %4, align 8
  %19 = getelementptr inbounds %struct.ber, %struct.ber* %18, i32 0, i32 0
  %20 = load i64, i64* %19, align 8
  %21 = load i64, i64* %6, align 8
  %22 = call i32 @bcopy(i8* %17, i64 %20, i64 %21)
  br label %23

23:                                               ; preds = %16, %3
  %24 = load i64, i64* %6, align 8
  %25 = load %struct.ber*, %struct.ber** %4, align 8
  %26 = getelementptr inbounds %struct.ber, %struct.ber* %25, i32 0, i32 0
  %27 = load i64, i64* %26, align 8
  %28 = add i64 %27, %24
  store i64 %28, i64* %26, align 8
  ret void
}

declare dso_local i32 @bcopy(i8*, i64, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
