; ModuleID = '/home/carl/AnghaBench/freebsd/usr.sbin/utx/extr_utx.c_boot.c'
source_filename = "/home/carl/AnghaBench/freebsd/usr.sbin/utx/extr_utx.c_boot.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.utmpx = type { i16, i32 }

@.str = private unnamed_addr constant [11 x i8] c"pututxline\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i16)* @boot to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @boot(i16 signext %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i16, align 2
  %4 = alloca %struct.utmpx, align 4
  store i16 %0, i16* %3, align 2
  %5 = getelementptr inbounds %struct.utmpx, %struct.utmpx* %4, i32 0, i32 0
  %6 = load i16, i16* %3, align 2
  store i16 %6, i16* %5, align 4
  %7 = getelementptr inbounds %struct.utmpx, %struct.utmpx* %4, i32 0, i32 1
  store i32 0, i32* %7, align 4
  %8 = getelementptr inbounds %struct.utmpx, %struct.utmpx* %4, i32 0, i32 1
  %9 = call i32 @gettimeofday(i32* %8, i32* null)
  %10 = call i32* @pututxline(%struct.utmpx* %4)
  %11 = icmp eq i32* %10, null
  br i1 %11, label %12, label %14

12:                                               ; preds = %1
  %13 = call i32 @perror(i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str, i64 0, i64 0))
  store i32 1, i32* %2, align 4
  br label %15

14:                                               ; preds = %1
  store i32 0, i32* %2, align 4
  br label %15

15:                                               ; preds = %14, %12
  %16 = load i32, i32* %2, align 4
  ret i32 %16
}

declare dso_local i32 @gettimeofday(i32*, i32*) #1

declare dso_local i32* @pututxline(%struct.utmpx*) #1

declare dso_local i32 @perror(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
