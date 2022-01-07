; ModuleID = '/home/carl/AnghaBench/freebsd/sys/netipsec/extr_xform_ah.c_ah_hdrsiz.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/netipsec/extr_xform_ah.c_ah_hdrsiz.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.secasvar = type { %struct.TYPE_8__*, i32* }
%struct.TYPE_8__ = type { %struct.TYPE_7__ }
%struct.TYPE_7__ = type { %struct.TYPE_6__ }
%struct.TYPE_6__ = type { %struct.TYPE_5__ }
%struct.TYPE_5__ = type { i64 }

@.str = private unnamed_addr constant [11 x i8] c"null xform\00", align 1
@AF_INET6 = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i64 @ah_hdrsiz(%struct.secasvar* %0) #0 {
  %2 = alloca %struct.secasvar*, align 8
  %3 = alloca i64, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store %struct.secasvar* %0, %struct.secasvar** %2, align 8
  %7 = load %struct.secasvar*, %struct.secasvar** %2, align 8
  %8 = icmp ne %struct.secasvar* %7, null
  br i1 %8, label %9, label %25

9:                                                ; preds = %1
  %10 = load %struct.secasvar*, %struct.secasvar** %2, align 8
  %11 = getelementptr inbounds %struct.secasvar, %struct.secasvar* %10, i32 0, i32 1
  %12 = load i32*, i32** %11, align 8
  %13 = icmp ne i32* %12, null
  %14 = zext i1 %13 to i32
  %15 = call i32 @IPSEC_ASSERT(i32 %14, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str, i64 0, i64 0))
  store i32 4, i32* %6, align 4
  %16 = load %struct.secasvar*, %struct.secasvar** %2, align 8
  %17 = call i32 @HDRSIZE(%struct.secasvar* %16)
  store i32 %17, i32* %5, align 4
  %18 = load %struct.secasvar*, %struct.secasvar** %2, align 8
  %19 = call i32 @AUTHSIZE(%struct.secasvar* %18)
  store i32 %19, i32* %4, align 4
  %20 = load i32, i32* %5, align 4
  %21 = load i32, i32* %4, align 4
  %22 = add nsw i32 %20, %21
  %23 = load i32, i32* %6, align 4
  %24 = call i64 @roundup(i32 %22, i32 %23)
  store i64 %24, i64* %3, align 8
  br label %26

25:                                               ; preds = %1
  store i64 24, i64* %3, align 8
  br label %26

26:                                               ; preds = %25, %9
  %27 = load i64, i64* %3, align 8
  ret i64 %27
}

declare dso_local i32 @IPSEC_ASSERT(i32, i8*) #1

declare dso_local i32 @HDRSIZE(%struct.secasvar*) #1

declare dso_local i32 @AUTHSIZE(%struct.secasvar*) #1

declare dso_local i64 @roundup(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
