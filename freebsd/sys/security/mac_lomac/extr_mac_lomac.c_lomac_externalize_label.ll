; ModuleID = '/home/carl/AnghaBench/freebsd/sys/security/mac_lomac/extr_mac_lomac.c_lomac_externalize_label.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/security/mac_lomac/extr_mac_lomac.c_lomac_externalize_label.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.label = type { i32 }
%struct.sbuf = type { i32 }
%struct.mac_lomac = type { i32 }

@MAC_LOMAC_LABEL_NAME = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.label*, i8*, %struct.sbuf*, i32*)* @lomac_externalize_label to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @lomac_externalize_label(%struct.label* %0, i8* %1, %struct.sbuf* %2, i32* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.label*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca %struct.sbuf*, align 8
  %9 = alloca i32*, align 8
  %10 = alloca %struct.mac_lomac*, align 8
  store %struct.label* %0, %struct.label** %6, align 8
  store i8* %1, i8** %7, align 8
  store %struct.sbuf* %2, %struct.sbuf** %8, align 8
  store i32* %3, i32** %9, align 8
  %11 = load i32, i32* @MAC_LOMAC_LABEL_NAME, align 4
  %12 = load i8*, i8** %7, align 8
  %13 = call i64 @strcmp(i32 %11, i8* %12)
  %14 = icmp ne i64 %13, 0
  br i1 %14, label %15, label %16

15:                                               ; preds = %4
  store i32 0, i32* %5, align 4
  br label %25

16:                                               ; preds = %4
  %17 = load i32*, i32** %9, align 8
  %18 = load i32, i32* %17, align 4
  %19 = add nsw i32 %18, 1
  store i32 %19, i32* %17, align 4
  %20 = load %struct.label*, %struct.label** %6, align 8
  %21 = call %struct.mac_lomac* @SLOT(%struct.label* %20)
  store %struct.mac_lomac* %21, %struct.mac_lomac** %10, align 8
  %22 = load %struct.sbuf*, %struct.sbuf** %8, align 8
  %23 = load %struct.mac_lomac*, %struct.mac_lomac** %10, align 8
  %24 = call i32 @lomac_to_string(%struct.sbuf* %22, %struct.mac_lomac* %23)
  store i32 %24, i32* %5, align 4
  br label %25

25:                                               ; preds = %16, %15
  %26 = load i32, i32* %5, align 4
  ret i32 %26
}

declare dso_local i64 @strcmp(i32, i8*) #1

declare dso_local %struct.mac_lomac* @SLOT(%struct.label*) #1

declare dso_local i32 @lomac_to_string(%struct.sbuf*, %struct.mac_lomac*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
