; ModuleID = '/home/carl/AnghaBench/freebsd/sys/net/extr_if_vxlan.c_vxlan_ftable_entry_dump.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/net/extr_if_vxlan.c_vxlan_ftable_entry_dump.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.vxlan_ftable_entry = type { i64, i32*, i32, %union.vxlan_sockaddr }
%union.vxlan_sockaddr = type { %struct.TYPE_6__ }
%struct.TYPE_6__ = type { i32 }
%struct.sbuf = type { i32 }
%struct.TYPE_4__ = type { i32 }
%struct.TYPE_5__ = type { i32 }

@.str = private unnamed_addr constant [11 x i8] c"%c 0x%02X \00", align 1
@ETHER_ADDR_LEN = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [6 x i8] c"%02X:\00", align 1
@.str.2 = private unnamed_addr constant [6 x i8] c"%02X \00", align 1
@AF_INET = common dso_local global i32 0, align 4
@INET_ADDRSTRLEN = common dso_local global i32 0, align 4
@INET6_ADDRSTRLEN = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [5 x i8] c"%*s \00", align 1
@.str.4 = private unnamed_addr constant [6 x i8] c"%08jd\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.vxlan_ftable_entry*, %struct.sbuf*)* @vxlan_ftable_entry_dump to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @vxlan_ftable_entry_dump(%struct.vxlan_ftable_entry* %0, %struct.sbuf* %1) #0 {
  %3 = alloca %struct.vxlan_ftable_entry*, align 8
  %4 = alloca %struct.sbuf*, align 8
  %5 = alloca [64 x i8], align 16
  %6 = alloca %union.vxlan_sockaddr*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  store %struct.vxlan_ftable_entry* %0, %struct.vxlan_ftable_entry** %3, align 8
  store %struct.sbuf* %1, %struct.sbuf** %4, align 8
  %12 = load %struct.vxlan_ftable_entry*, %struct.vxlan_ftable_entry** %3, align 8
  %13 = getelementptr inbounds %struct.vxlan_ftable_entry, %struct.vxlan_ftable_entry* %12, i32 0, i32 3
  store %union.vxlan_sockaddr* %13, %union.vxlan_sockaddr** %6, align 8
  %14 = load %union.vxlan_sockaddr*, %union.vxlan_sockaddr** %6, align 8
  %15 = bitcast %union.vxlan_sockaddr* %14 to %struct.TYPE_4__*
  %16 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 4
  store i32 %17, i32* %10, align 4
  %18 = load %struct.sbuf*, %struct.sbuf** %4, align 8
  %19 = call i32 @sbuf_len(%struct.sbuf* %18)
  store i32 %19, i32* %9, align 4
  %20 = load %struct.sbuf*, %struct.sbuf** %4, align 8
  %21 = load %struct.vxlan_ftable_entry*, %struct.vxlan_ftable_entry** %3, align 8
  %22 = call i64 @VXLAN_FE_IS_DYNAMIC(%struct.vxlan_ftable_entry* %21)
  %23 = icmp ne i64 %22, 0
  %24 = zext i1 %23 to i64
  %25 = select i1 %23, i32 68, i32 83
  %26 = trunc i32 %25 to i8
  %27 = load %struct.vxlan_ftable_entry*, %struct.vxlan_ftable_entry** %3, align 8
  %28 = getelementptr inbounds %struct.vxlan_ftable_entry, %struct.vxlan_ftable_entry* %27, i32 0, i32 2
  %29 = load i32, i32* %28, align 8
  %30 = call i32 (%struct.sbuf*, i8*, i8, ...) @sbuf_printf(%struct.sbuf* %20, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str, i64 0, i64 0), i8 signext %26, i32 %29)
  store i32 0, i32* %8, align 4
  br label %31

31:                                               ; preds = %47, %2
  %32 = load i32, i32* %8, align 4
  %33 = load i32, i32* @ETHER_ADDR_LEN, align 4
  %34 = sub nsw i32 %33, 1
  %35 = icmp slt i32 %32, %34
  br i1 %35, label %36, label %50

36:                                               ; preds = %31
  %37 = load %struct.sbuf*, %struct.sbuf** %4, align 8
  %38 = load %struct.vxlan_ftable_entry*, %struct.vxlan_ftable_entry** %3, align 8
  %39 = getelementptr inbounds %struct.vxlan_ftable_entry, %struct.vxlan_ftable_entry* %38, i32 0, i32 1
  %40 = load i32*, i32** %39, align 8
  %41 = load i32, i32* %8, align 4
  %42 = sext i32 %41 to i64
  %43 = getelementptr inbounds i32, i32* %40, i64 %42
  %44 = load i32, i32* %43, align 4
  %45 = trunc i32 %44 to i8
  %46 = call i32 (%struct.sbuf*, i8*, i8, ...) @sbuf_printf(%struct.sbuf* %37, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.1, i64 0, i64 0), i8 signext %45)
  br label %47

47:                                               ; preds = %36
  %48 = load i32, i32* %8, align 4
  %49 = add nsw i32 %48, 1
  store i32 %49, i32* %8, align 4
  br label %31

50:                                               ; preds = %31
  %51 = load %struct.sbuf*, %struct.sbuf** %4, align 8
  %52 = load %struct.vxlan_ftable_entry*, %struct.vxlan_ftable_entry** %3, align 8
  %53 = getelementptr inbounds %struct.vxlan_ftable_entry, %struct.vxlan_ftable_entry* %52, i32 0, i32 1
  %54 = load i32*, i32** %53, align 8
  %55 = load i32, i32* %8, align 4
  %56 = sext i32 %55 to i64
  %57 = getelementptr inbounds i32, i32* %54, i64 %56
  %58 = load i32, i32* %57, align 4
  %59 = trunc i32 %58 to i8
  %60 = call i32 (%struct.sbuf*, i8*, i8, ...) @sbuf_printf(%struct.sbuf* %51, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.2, i64 0, i64 0), i8 signext %59)
  %61 = load i32, i32* %10, align 4
  %62 = load i32, i32* @AF_INET, align 4
  %63 = icmp eq i32 %61, %62
  br i1 %63, label %64, label %71

64:                                               ; preds = %50
  %65 = load %union.vxlan_sockaddr*, %union.vxlan_sockaddr** %6, align 8
  %66 = bitcast %union.vxlan_sockaddr* %65 to %struct.TYPE_5__*
  %67 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %66, i32 0, i32 0
  %68 = bitcast i32* %67 to i8*
  store i8* %68, i8** %7, align 8
  %69 = load i32, i32* @INET_ADDRSTRLEN, align 4
  %70 = sub nsw i32 %69, 1
  store i32 %70, i32* %11, align 4
  br label %78

71:                                               ; preds = %50
  %72 = load %union.vxlan_sockaddr*, %union.vxlan_sockaddr** %6, align 8
  %73 = bitcast %union.vxlan_sockaddr* %72 to %struct.TYPE_6__*
  %74 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %73, i32 0, i32 0
  %75 = bitcast i32* %74 to i8*
  store i8* %75, i8** %7, align 8
  %76 = load i32, i32* @INET6_ADDRSTRLEN, align 4
  %77 = sub nsw i32 %76, 1
  store i32 %77, i32* %11, align 4
  br label %78

78:                                               ; preds = %71, %64
  %79 = load i32, i32* %10, align 4
  %80 = load i8*, i8** %7, align 8
  %81 = getelementptr inbounds [64 x i8], [64 x i8]* %5, i64 0, i64 0
  %82 = call i32 @inet_ntop(i32 %79, i8* %80, i8* %81, i32 64)
  %83 = load %struct.sbuf*, %struct.sbuf** %4, align 8
  %84 = load i32, i32* %11, align 4
  %85 = trunc i32 %84 to i8
  %86 = getelementptr inbounds [64 x i8], [64 x i8]* %5, i64 0, i64 0
  %87 = call i32 (%struct.sbuf*, i8*, i8, ...) @sbuf_printf(%struct.sbuf* %83, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.3, i64 0, i64 0), i8 signext %85, i8* %86)
  %88 = load %struct.sbuf*, %struct.sbuf** %4, align 8
  %89 = load %struct.vxlan_ftable_entry*, %struct.vxlan_ftable_entry** %3, align 8
  %90 = getelementptr inbounds %struct.vxlan_ftable_entry, %struct.vxlan_ftable_entry* %89, i32 0, i32 0
  %91 = load i64, i64* %90, align 8
  %92 = trunc i64 %91 to i32
  %93 = trunc i32 %92 to i8
  %94 = call i32 (%struct.sbuf*, i8*, i8, ...) @sbuf_printf(%struct.sbuf* %88, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.4, i64 0, i64 0), i8 signext %93)
  %95 = load %struct.sbuf*, %struct.sbuf** %4, align 8
  %96 = call i32 @sbuf_putc(%struct.sbuf* %95, i8 signext 10)
  %97 = load %struct.sbuf*, %struct.sbuf** %4, align 8
  %98 = call i64 @sbuf_error(%struct.sbuf* %97)
  %99 = icmp ne i64 %98, 0
  br i1 %99, label %100, label %104

100:                                              ; preds = %78
  %101 = load %struct.sbuf*, %struct.sbuf** %4, align 8
  %102 = load i32, i32* %9, align 4
  %103 = call i32 @sbuf_setpos(%struct.sbuf* %101, i32 %102)
  br label %104

104:                                              ; preds = %100, %78
  ret void
}

declare dso_local i32 @sbuf_len(%struct.sbuf*) #1

declare dso_local i32 @sbuf_printf(%struct.sbuf*, i8*, i8 signext, ...) #1

declare dso_local i64 @VXLAN_FE_IS_DYNAMIC(%struct.vxlan_ftable_entry*) #1

declare dso_local i32 @inet_ntop(i32, i8*, i8*, i32) #1

declare dso_local i32 @sbuf_putc(%struct.sbuf*, i8 signext) #1

declare dso_local i64 @sbuf_error(%struct.sbuf*) #1

declare dso_local i32 @sbuf_setpos(%struct.sbuf*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
