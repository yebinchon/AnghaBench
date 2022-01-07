; ModuleID = '/home/carl/AnghaBench/freebsd/sys/rpc/extr_auth_none.c_authnone_marshal.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/rpc/extr_auth_none.c_authnone_marshal.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.authnone_private = type { i32, i32 }
%struct.mbuf = type { i32 }

@authnone_private = common dso_local global %struct.authnone_private zeroinitializer, align 4
@.str = private unnamed_addr constant [31 x i8] c"authnone_marshal: xdrs is null\00", align 1
@FALSE = common dso_local global i32 0, align 4
@TRUE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32*, i32, i32*, %struct.mbuf*)* @authnone_marshal to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @authnone_marshal(i32* %0, i32 %1, i32* %2, %struct.mbuf* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca i32*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32*, align 8
  %9 = alloca %struct.mbuf*, align 8
  %10 = alloca %struct.authnone_private*, align 8
  store i32* %0, i32** %6, align 8
  store i32 %1, i32* %7, align 4
  store i32* %2, i32** %8, align 8
  store %struct.mbuf* %3, %struct.mbuf** %9, align 8
  store %struct.authnone_private* @authnone_private, %struct.authnone_private** %10, align 8
  %11 = load i32*, i32** %8, align 8
  %12 = icmp ne i32* %11, null
  %13 = zext i1 %12 to i32
  %14 = call i32 @KASSERT(i32 %13, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str, i64 0, i64 0))
  %15 = load i32*, i32** %8, align 8
  %16 = load %struct.authnone_private*, %struct.authnone_private** %10, align 8
  %17 = getelementptr inbounds %struct.authnone_private, %struct.authnone_private* %16, i32 0, i32 1
  %18 = load i32, i32* %17, align 4
  %19 = load %struct.authnone_private*, %struct.authnone_private** %10, align 8
  %20 = getelementptr inbounds %struct.authnone_private, %struct.authnone_private* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 4
  %22 = call i32 @XDR_PUTBYTES(i32* %15, i32 %18, i32 %21)
  %23 = icmp ne i32 %22, 0
  br i1 %23, label %26, label %24

24:                                               ; preds = %4
  %25 = load i32, i32* @FALSE, align 4
  store i32 %25, i32* %5, align 4
  br label %31

26:                                               ; preds = %4
  %27 = load i32*, i32** %8, align 8
  %28 = load %struct.mbuf*, %struct.mbuf** %9, align 8
  %29 = call i32 @xdrmbuf_append(i32* %27, %struct.mbuf* %28)
  %30 = load i32, i32* @TRUE, align 4
  store i32 %30, i32* %5, align 4
  br label %31

31:                                               ; preds = %26, %24
  %32 = load i32, i32* %5, align 4
  ret i32 %32
}

declare dso_local i32 @KASSERT(i32, i8*) #1

declare dso_local i32 @XDR_PUTBYTES(i32*, i32, i32) #1

declare dso_local i32 @xdrmbuf_append(i32*, %struct.mbuf*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
