; ModuleID = '/home/carl/AnghaBench/freebsd/usr.sbin/rarpd/extr_rarpd.c_rarp_reply.c'
source_filename = "/home/carl/AnghaBench/freebsd/usr.sbin/rarpd/extr_rarpd.c_rarp_reply.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.if_info = type { i32, i32, i32, i64 }
%struct.ether_header = type { i32, i32, i32 }
%struct.ether_arp = type { i32, i64, i64, i32, i32 }

@REVARP_REPLY = common dso_local global i32 0, align 4
@LOG_ERR = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [35 x i8] c"write: only %d of %d bytes written\00", align 1
@verbose = common dso_local global i64 0, align 8
@LOG_INFO = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [20 x i8] c"%s %s at %s REPLIED\00", align 1
@ETHERTYPE_REVARP = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.if_info*, %struct.ether_header*, i32, i64)* @rarp_reply to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @rarp_reply(%struct.if_info* %0, %struct.ether_header* %1, i32 %2, i64 %3) #0 {
  %5 = alloca %struct.if_info*, align 8
  %6 = alloca %struct.ether_header*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  %10 = alloca %struct.ether_arp*, align 8
  store %struct.if_info* %0, %struct.if_info** %5, align 8
  store %struct.ether_header* %1, %struct.ether_header** %6, align 8
  store i32 %2, i32* %7, align 4
  store i64 %3, i64* %8, align 8
  %11 = load %struct.ether_header*, %struct.ether_header** %6, align 8
  %12 = getelementptr inbounds %struct.ether_header, %struct.ether_header* %11, i64 1
  %13 = bitcast %struct.ether_header* %12 to %struct.ether_arp*
  store %struct.ether_arp* %13, %struct.ether_arp** %10, align 8
  %14 = load %struct.ether_arp*, %struct.ether_arp** %10, align 8
  %15 = getelementptr inbounds %struct.ether_arp, %struct.ether_arp* %14, i32 0, i32 3
  %16 = load i32, i32* %7, align 4
  %17 = call i32 @update_arptab(i32* %15, i32 %16)
  %18 = load i32, i32* @REVARP_REPLY, align 4
  %19 = call i32 @htons(i32 %18)
  %20 = load %struct.ether_arp*, %struct.ether_arp** %10, align 8
  %21 = getelementptr inbounds %struct.ether_arp, %struct.ether_arp* %20, i32 0, i32 4
  store i32 %19, i32* %21, align 4
  %22 = load %struct.ether_arp*, %struct.ether_arp** %10, align 8
  %23 = getelementptr inbounds %struct.ether_arp, %struct.ether_arp* %22, i32 0, i32 3
  %24 = bitcast i32* %23 to i8*
  %25 = load %struct.ether_header*, %struct.ether_header** %6, align 8
  %26 = getelementptr inbounds %struct.ether_header, %struct.ether_header* %25, i32 0, i32 1
  %27 = bitcast i32* %26 to i8*
  %28 = call i32 @bcopy(i8* %24, i8* %27, i32 6)
  %29 = load %struct.if_info*, %struct.if_info** %5, align 8
  %30 = getelementptr inbounds %struct.if_info, %struct.if_info* %29, i32 0, i32 3
  %31 = load i64, i64* %30, align 8
  %32 = inttoptr i64 %31 to i8*
  %33 = load %struct.ether_header*, %struct.ether_header** %6, align 8
  %34 = getelementptr inbounds %struct.ether_header, %struct.ether_header* %33, i32 0, i32 0
  %35 = bitcast i32* %34 to i8*
  %36 = call i32 @bcopy(i8* %32, i8* %35, i32 6)
  %37 = load %struct.if_info*, %struct.if_info** %5, align 8
  %38 = getelementptr inbounds %struct.if_info, %struct.if_info* %37, i32 0, i32 3
  %39 = load i64, i64* %38, align 8
  %40 = inttoptr i64 %39 to i8*
  %41 = load %struct.ether_arp*, %struct.ether_arp** %10, align 8
  %42 = getelementptr inbounds %struct.ether_arp, %struct.ether_arp* %41, i32 0, i32 3
  %43 = bitcast i32* %42 to i8*
  %44 = call i32 @bcopy(i8* %40, i8* %43, i32 6)
  %45 = bitcast i32* %7 to i8*
  %46 = load %struct.ether_arp*, %struct.ether_arp** %10, align 8
  %47 = getelementptr inbounds %struct.ether_arp, %struct.ether_arp* %46, i32 0, i32 2
  %48 = load i64, i64* %47, align 8
  %49 = inttoptr i64 %48 to i8*
  %50 = call i32 @bcopy(i8* %45, i8* %49, i32 4)
  %51 = load %struct.if_info*, %struct.if_info** %5, align 8
  %52 = getelementptr inbounds %struct.if_info, %struct.if_info* %51, i32 0, i32 2
  %53 = bitcast i32* %52 to i8*
  %54 = load %struct.ether_arp*, %struct.ether_arp** %10, align 8
  %55 = getelementptr inbounds %struct.ether_arp, %struct.ether_arp* %54, i32 0, i32 1
  %56 = load i64, i64* %55, align 8
  %57 = inttoptr i64 %56 to i8*
  %58 = call i32 @bcopy(i8* %53, i8* %57, i32 4)
  %59 = load %struct.ether_header*, %struct.ether_header** %6, align 8
  %60 = bitcast %struct.ether_header* %59 to i8*
  %61 = getelementptr inbounds i8, i8* %60, i64 44
  %62 = load i64, i64* %8, align 8
  %63 = sub i64 %62, 44
  %64 = call i32 @bzero(i8* %61, i64 %63)
  %65 = load %struct.if_info*, %struct.if_info** %5, align 8
  %66 = getelementptr inbounds %struct.if_info, %struct.if_info* %65, i32 0, i32 1
  %67 = load i32, i32* %66, align 4
  %68 = load %struct.ether_header*, %struct.ether_header** %6, align 8
  %69 = bitcast %struct.ether_header* %68 to i8*
  %70 = load i64, i64* %8, align 8
  %71 = call i64 @write(i32 %67, i8* %69, i64 %70)
  store i64 %71, i64* %9, align 8
  %72 = load i64, i64* %9, align 8
  %73 = load i64, i64* %8, align 8
  %74 = icmp ne i64 %72, %73
  br i1 %74, label %75, label %80

75:                                               ; preds = %4
  %76 = load i32, i32* @LOG_ERR, align 4
  %77 = load i64, i64* %9, align 8
  %78 = load i64, i64* %8, align 8
  %79 = call i32 (i32, i8*, i64, i64, ...) @logmsg(i32 %76, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str, i64 0, i64 0), i64 %77, i64 %78)
  br label %80

80:                                               ; preds = %75, %4
  %81 = load i64, i64* @verbose, align 8
  %82 = icmp ne i64 %81, 0
  br i1 %82, label %83, label %98

83:                                               ; preds = %80
  %84 = load i32, i32* @LOG_INFO, align 4
  %85 = load %struct.if_info*, %struct.if_info** %5, align 8
  %86 = getelementptr inbounds %struct.if_info, %struct.if_info* %85, i32 0, i32 0
  %87 = load i32, i32* %86, align 8
  %88 = sext i32 %87 to i64
  %89 = load %struct.ether_arp*, %struct.ether_arp** %10, align 8
  %90 = getelementptr inbounds %struct.ether_arp, %struct.ether_arp* %89, i32 0, i32 0
  %91 = load i32, i32* %90, align 8
  %92 = call i32 @eatoa(i32 %91)
  %93 = sext i32 %92 to i64
  %94 = load i32, i32* %7, align 4
  %95 = call i32 @ntohl(i32 %94)
  %96 = call i32 @intoa(i32 %95)
  %97 = call i32 (i32, i8*, i64, i64, ...) @logmsg(i32 %84, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.1, i64 0, i64 0), i64 %88, i64 %93, i32 %96)
  br label %98

98:                                               ; preds = %83, %80
  ret void
}

declare dso_local i32 @update_arptab(i32*, i32) #1

declare dso_local i32 @htons(i32) #1

declare dso_local i32 @bcopy(i8*, i8*, i32) #1

declare dso_local i32 @bzero(i8*, i64) #1

declare dso_local i64 @write(i32, i8*, i64) #1

declare dso_local i32 @logmsg(i32, i8*, i64, i64, ...) #1

declare dso_local i32 @eatoa(i32) #1

declare dso_local i32 @intoa(i32) #1

declare dso_local i32 @ntohl(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
