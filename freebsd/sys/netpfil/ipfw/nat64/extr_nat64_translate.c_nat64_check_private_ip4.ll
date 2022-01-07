; ModuleID = '/home/carl/AnghaBench/freebsd/sys/netpfil/ipfw/nat64/extr_nat64_translate.c_nat64_check_private_ip4.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/netpfil/ipfw/nat64/extr_nat64_translate.c_nat64_check_private_ip4.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nat64_config = type { i32 }

@NAT64_ALLOW_PRIVATE = common dso_local global i32 0, align 4
@NAT64_WKPFX = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @nat64_check_private_ip4(%struct.nat64_config* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.nat64_config*, align 8
  %5 = alloca i32, align 4
  store %struct.nat64_config* %0, %struct.nat64_config** %4, align 8
  store i32 %1, i32* %5, align 4
  %6 = load %struct.nat64_config*, %struct.nat64_config** %4, align 8
  %7 = getelementptr inbounds %struct.nat64_config, %struct.nat64_config* %6, i32 0, i32 0
  %8 = load i32, i32* %7, align 4
  %9 = load i32, i32* @NAT64_ALLOW_PRIVATE, align 4
  %10 = and i32 %8, %9
  %11 = icmp ne i32 %10, 0
  br i1 %11, label %12, label %13

12:                                               ; preds = %2
  store i32 0, i32* %3, align 4
  br label %78

13:                                               ; preds = %2
  %14 = load %struct.nat64_config*, %struct.nat64_config** %4, align 8
  %15 = getelementptr inbounds %struct.nat64_config, %struct.nat64_config* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 4
  %17 = load i32, i32* @NAT64_WKPFX, align 4
  %18 = and i32 %16, %17
  %19 = icmp ne i32 %18, 0
  br i1 %19, label %20, label %77

20:                                               ; preds = %13
  %21 = load i32, i32* %5, align 4
  %22 = call i32 @htonl(i32 -16777216)
  %23 = and i32 %21, %22
  %24 = call i32 @htonl(i32 167772160)
  %25 = icmp eq i32 %23, %24
  br i1 %25, label %38, label %26

26:                                               ; preds = %20
  %27 = load i32, i32* %5, align 4
  %28 = call i32 @htonl(i32 -1048576)
  %29 = and i32 %27, %28
  %30 = call i32 @htonl(i32 -1408237568)
  %31 = icmp eq i32 %29, %30
  br i1 %31, label %38, label %32

32:                                               ; preds = %26
  %33 = load i32, i32* %5, align 4
  %34 = call i32 @htonl(i32 -65536)
  %35 = and i32 %33, %34
  %36 = call i32 @htonl(i32 -1062731776)
  %37 = icmp eq i32 %35, %36
  br i1 %37, label %38, label %39

38:                                               ; preds = %32, %26, %20
  store i32 1, i32* %3, align 4
  br label %78

39:                                               ; preds = %32
  %40 = load i32, i32* %5, align 4
  %41 = call i32 @htonl(i32 -256)
  %42 = and i32 %40, %41
  %43 = call i32 @htonl(i32 -1073741824)
  %44 = icmp eq i32 %42, %43
  br i1 %44, label %75, label %45

45:                                               ; preds = %39
  %46 = load i32, i32* %5, align 4
  %47 = call i32 @htonl(i32 -256)
  %48 = and i32 %46, %47
  %49 = call i32 @htonl(i32 -1067949312)
  %50 = icmp eq i32 %48, %49
  br i1 %50, label %75, label %51

51:                                               ; preds = %45
  %52 = load i32, i32* %5, align 4
  %53 = call i32 @htonl(i32 -512)
  %54 = and i32 %52, %53
  %55 = call i32 @htonl(i32 -971898880)
  %56 = icmp eq i32 %54, %55
  br i1 %56, label %75, label %57

57:                                               ; preds = %51
  %58 = load i32, i32* %5, align 4
  %59 = call i32 @htonl(i32 -256)
  %60 = and i32 %58, %59
  %61 = call i32 @htonl(i32 -1073741312)
  %62 = icmp eq i32 %60, %61
  br i1 %62, label %75, label %63

63:                                               ; preds = %57
  %64 = load i32, i32* %5, align 4
  %65 = call i32 @htonl(i32 -512)
  %66 = and i32 %64, %65
  %67 = call i32 @htonl(i32 -969710592)
  %68 = icmp eq i32 %66, %67
  br i1 %68, label %75, label %69

69:                                               ; preds = %63
  %70 = load i32, i32* %5, align 4
  %71 = call i32 @htonl(i32 -256)
  %72 = and i32 %70, %71
  %73 = call i32 @htonl(i32 -889163520)
  %74 = icmp eq i32 %72, %73
  br i1 %74, label %75, label %76

75:                                               ; preds = %69, %63, %57, %51, %45, %39
  store i32 1, i32* %3, align 4
  br label %78

76:                                               ; preds = %69
  br label %77

77:                                               ; preds = %76, %13
  store i32 0, i32* %3, align 4
  br label %78

78:                                               ; preds = %77, %75, %38, %12
  %79 = load i32, i32* %3, align 4
  ret i32 %79
}

declare dso_local i32 @htonl(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
