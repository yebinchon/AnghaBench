; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/xen/netfront/extr_netfront.c_xen_net_read_mac.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/xen/netfront/extr_netfront.c_xen_net_read_mac.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@XST_NIL = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [4 x i8] c"mac\00", align 1
@ENOENT = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [15 x i8] c"parsing %s/mac\00", align 1
@ETHER_ADDR_LEN = common dso_local global i32 0, align 4
@M_XENBUS = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i32*)* @xen_net_read_mac to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @xen_net_read_mac(i32 %0, i32* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i8*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i8*, align 8
  %11 = alloca i8*, align 8
  store i32 %0, i32* %4, align 4
  store i32* %1, i32** %5, align 8
  %12 = load i32, i32* %4, align 4
  %13 = call i8* @xenbus_get_node(i32 %12)
  store i8* %13, i8** %11, align 8
  %14 = load i32, i32* @XST_NIL, align 4
  %15 = load i8*, i8** %11, align 8
  %16 = call i32 @xs_read(i32 %14, i8* %15, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str, i64 0, i64 0), i32* null, i8** %10)
  store i32 %16, i32* %6, align 4
  %17 = load i32, i32* %6, align 4
  %18 = load i32, i32* @ENOENT, align 4
  %19 = icmp eq i32 %17, %18
  br i1 %19, label %20, label %26

20:                                               ; preds = %2
  %21 = load i32, i32* %4, align 4
  %22 = call i8* @xenbus_get_otherend_path(i32 %21)
  store i8* %22, i8** %11, align 8
  %23 = load i32, i32* @XST_NIL, align 4
  %24 = load i8*, i8** %11, align 8
  %25 = call i32 @xs_read(i32 %23, i8* %24, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str, i64 0, i64 0), i32* null, i8** %10)
  store i32 %25, i32* %6, align 4
  br label %26

26:                                               ; preds = %20, %2
  %27 = load i32, i32* %6, align 4
  %28 = icmp ne i32 %27, 0
  br i1 %28, label %29, label %35

29:                                               ; preds = %26
  %30 = load i32, i32* %4, align 4
  %31 = load i32, i32* %6, align 4
  %32 = load i8*, i8** %11, align 8
  %33 = call i32 @xenbus_dev_fatal(i32 %30, i32 %31, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.1, i64 0, i64 0), i8* %32)
  %34 = load i32, i32* %6, align 4
  store i32 %34, i32* %3, align 4
  br label %78

35:                                               ; preds = %26
  %36 = load i8*, i8** %10, align 8
  store i8* %36, i8** %8, align 8
  store i32 0, i32* %7, align 4
  br label %37

37:                                               ; preds = %71, %35
  %38 = load i32, i32* %7, align 4
  %39 = load i32, i32* @ETHER_ADDR_LEN, align 4
  %40 = icmp slt i32 %38, %39
  br i1 %40, label %41, label %74

41:                                               ; preds = %37
  %42 = load i8*, i8** %8, align 8
  %43 = call i32 @strtoul(i8* %42, i8** %9, i32 16)
  %44 = load i32*, i32** %5, align 8
  %45 = load i32, i32* %7, align 4
  %46 = sext i32 %45 to i64
  %47 = getelementptr inbounds i32, i32* %44, i64 %46
  store i32 %43, i32* %47, align 4
  %48 = load i8*, i8** %8, align 8
  %49 = load i8*, i8** %9, align 8
  %50 = icmp eq i8* %48, %49
  br i1 %50, label %63, label %51

51:                                               ; preds = %41
  %52 = load i8*, i8** %9, align 8
  %53 = getelementptr inbounds i8, i8* %52, i64 0
  %54 = load i8, i8* %53, align 1
  %55 = sext i8 %54 to i32
  %56 = icmp ne i32 %55, 58
  br i1 %56, label %57, label %68

57:                                               ; preds = %51
  %58 = load i8*, i8** %9, align 8
  %59 = getelementptr inbounds i8, i8* %58, i64 0
  %60 = load i8, i8* %59, align 1
  %61 = sext i8 %60 to i32
  %62 = icmp ne i32 %61, 0
  br i1 %62, label %63, label %68

63:                                               ; preds = %57, %41
  %64 = load i8*, i8** %10, align 8
  %65 = load i32, i32* @M_XENBUS, align 4
  %66 = call i32 @free(i8* %64, i32 %65)
  %67 = load i32, i32* @ENOENT, align 4
  store i32 %67, i32* %3, align 4
  br label %78

68:                                               ; preds = %57, %51
  %69 = load i8*, i8** %9, align 8
  %70 = getelementptr inbounds i8, i8* %69, i64 1
  store i8* %70, i8** %8, align 8
  br label %71

71:                                               ; preds = %68
  %72 = load i32, i32* %7, align 4
  %73 = add nsw i32 %72, 1
  store i32 %73, i32* %7, align 4
  br label %37

74:                                               ; preds = %37
  %75 = load i8*, i8** %10, align 8
  %76 = load i32, i32* @M_XENBUS, align 4
  %77 = call i32 @free(i8* %75, i32 %76)
  store i32 0, i32* %3, align 4
  br label %78

78:                                               ; preds = %74, %63, %29
  %79 = load i32, i32* %3, align 4
  ret i32 %79
}

declare dso_local i8* @xenbus_get_node(i32) #1

declare dso_local i32 @xs_read(i32, i8*, i8*, i32*, i8**) #1

declare dso_local i8* @xenbus_get_otherend_path(i32) #1

declare dso_local i32 @xenbus_dev_fatal(i32, i32, i8*, i8*) #1

declare dso_local i32 @strtoul(i8*, i8**, i32) #1

declare dso_local i32 @free(i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
