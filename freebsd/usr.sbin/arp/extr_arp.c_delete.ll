; ModuleID = '/home/carl/AnghaBench/freebsd/usr.sbin/arp/extr_arp.c_delete.c'
source_filename = "/home/carl/AnghaBench/freebsd/usr.sbin/arp/extr_arp.c_delete.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sockaddr_in = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32 }
%struct.rt_msghdr = type { i32 }
%struct.sockaddr_dl = type { i64, i32 }

@RTF_ANNOUNCE = common dso_local global i32 0, align 4
@flags = common dso_local global i32 0, align 4
@RTM_GET = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [3 x i8] c"%s\00", align 1
@AF_LINK = common dso_local global i64 0, align 8
@RTF_GATEWAY = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [25 x i8] c"delete: cannot locate %s\00", align 1
@RTF_LLDATA = common dso_local global i32 0, align 4
@RTM_DELETE = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [17 x i8] c"%s (%s) deleted\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i8*)* @delete to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @delete(i8* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i8*, align 8
  %4 = alloca %struct.sockaddr_in*, align 8
  %5 = alloca %struct.sockaddr_in*, align 8
  %6 = alloca %struct.rt_msghdr*, align 8
  %7 = alloca %struct.sockaddr_dl*, align 8
  store i8* %0, i8** %3, align 8
  %8 = load i8*, i8** %3, align 8
  %9 = call %struct.sockaddr_in* @getaddr(i8* %8)
  store %struct.sockaddr_in* %9, %struct.sockaddr_in** %5, align 8
  %10 = load %struct.sockaddr_in*, %struct.sockaddr_in** %5, align 8
  %11 = icmp eq %struct.sockaddr_in* %10, null
  br i1 %11, label %12, label %13

12:                                               ; preds = %1
  store i32 1, i32* %2, align 4
  br label %95

13:                                               ; preds = %1
  %14 = load i32, i32* @RTF_ANNOUNCE, align 4
  %15 = xor i32 %14, -1
  %16 = load i32, i32* @flags, align 4
  %17 = and i32 %16, %15
  store i32 %17, i32* @flags, align 4
  br label %18

18:                                               ; preds = %72, %13
  %19 = load i32, i32* @RTM_GET, align 4
  %20 = load %struct.sockaddr_in*, %struct.sockaddr_in** %5, align 8
  %21 = call %struct.rt_msghdr* @rtmsg(i32 %19, %struct.sockaddr_in* %20, i32* null)
  store %struct.rt_msghdr* %21, %struct.rt_msghdr** %6, align 8
  %22 = load %struct.rt_msghdr*, %struct.rt_msghdr** %6, align 8
  %23 = icmp eq %struct.rt_msghdr* %22, null
  br i1 %23, label %24, label %27

24:                                               ; preds = %18
  %25 = load i8*, i8** %3, align 8
  %26 = call i32 @xo_warn(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str, i64 0, i64 0), i8* %25)
  store i32 1, i32* %2, align 4
  br label %95

27:                                               ; preds = %18
  %28 = load %struct.rt_msghdr*, %struct.rt_msghdr** %6, align 8
  %29 = getelementptr inbounds %struct.rt_msghdr, %struct.rt_msghdr* %28, i64 1
  %30 = bitcast %struct.rt_msghdr* %29 to %struct.sockaddr_in*
  store %struct.sockaddr_in* %30, %struct.sockaddr_in** %4, align 8
  %31 = load %struct.sockaddr_in*, %struct.sockaddr_in** %4, align 8
  %32 = call i32 @SA_SIZE(%struct.sockaddr_in* %31)
  %33 = load %struct.sockaddr_in*, %struct.sockaddr_in** %4, align 8
  %34 = bitcast %struct.sockaddr_in* %33 to i8*
  %35 = sext i32 %32 to i64
  %36 = getelementptr inbounds i8, i8* %34, i64 %35
  %37 = bitcast i8* %36 to %struct.sockaddr_dl*
  store %struct.sockaddr_dl* %37, %struct.sockaddr_dl** %7, align 8
  %38 = load %struct.sockaddr_dl*, %struct.sockaddr_dl** %7, align 8
  %39 = getelementptr inbounds %struct.sockaddr_dl, %struct.sockaddr_dl* %38, i32 0, i32 0
  %40 = load i64, i64* %39, align 8
  %41 = load i64, i64* @AF_LINK, align 8
  %42 = icmp eq i64 %40, %41
  br i1 %42, label %43, label %64

43:                                               ; preds = %27
  %44 = load %struct.rt_msghdr*, %struct.rt_msghdr** %6, align 8
  %45 = getelementptr inbounds %struct.rt_msghdr, %struct.rt_msghdr* %44, i32 0, i32 0
  %46 = load i32, i32* %45, align 4
  %47 = load i32, i32* @RTF_GATEWAY, align 4
  %48 = and i32 %46, %47
  %49 = icmp ne i32 %48, 0
  br i1 %49, label %64, label %50

50:                                               ; preds = %43
  %51 = load %struct.sockaddr_dl*, %struct.sockaddr_dl** %7, align 8
  %52 = getelementptr inbounds %struct.sockaddr_dl, %struct.sockaddr_dl* %51, i32 0, i32 1
  %53 = load i32, i32* %52, align 8
  %54 = call i64 @valid_type(i32 %53)
  %55 = icmp ne i64 %54, 0
  br i1 %55, label %56, label %64

56:                                               ; preds = %50
  %57 = load %struct.sockaddr_in*, %struct.sockaddr_in** %5, align 8
  %58 = getelementptr inbounds %struct.sockaddr_in, %struct.sockaddr_in* %57, i32 0, i32 0
  %59 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %58, i32 0, i32 0
  %60 = load i32, i32* %59, align 4
  %61 = load %struct.sockaddr_in*, %struct.sockaddr_in** %4, align 8
  %62 = getelementptr inbounds %struct.sockaddr_in, %struct.sockaddr_in* %61, i32 0, i32 0
  %63 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %62, i32 0, i32 0
  store i32 %60, i32* %63, align 4
  br label %76

64:                                               ; preds = %50, %43, %27
  %65 = load i32, i32* @flags, align 4
  %66 = load i32, i32* @RTF_ANNOUNCE, align 4
  %67 = and i32 %65, %66
  %68 = icmp ne i32 %67, 0
  br i1 %68, label %69, label %72

69:                                               ; preds = %64
  %70 = load i8*, i8** %3, align 8
  %71 = call i32 @xo_warnx(i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.1, i64 0, i64 0), i8* %70)
  store i32 1, i32* %2, align 4
  br label %95

72:                                               ; preds = %64
  %73 = load i32, i32* @RTF_ANNOUNCE, align 4
  %74 = load i32, i32* @flags, align 4
  %75 = or i32 %74, %73
  store i32 %75, i32* @flags, align 4
  br label %18

76:                                               ; preds = %56
  %77 = load i32, i32* @RTF_LLDATA, align 4
  %78 = load %struct.rt_msghdr*, %struct.rt_msghdr** %6, align 8
  %79 = getelementptr inbounds %struct.rt_msghdr, %struct.rt_msghdr* %78, i32 0, i32 0
  %80 = load i32, i32* %79, align 4
  %81 = or i32 %80, %77
  store i32 %81, i32* %79, align 4
  %82 = load i32, i32* @RTM_DELETE, align 4
  %83 = load %struct.sockaddr_in*, %struct.sockaddr_in** %5, align 8
  %84 = call %struct.rt_msghdr* @rtmsg(i32 %82, %struct.sockaddr_in* %83, i32* null)
  %85 = icmp ne %struct.rt_msghdr* %84, null
  br i1 %85, label %86, label %94

86:                                               ; preds = %76
  %87 = load i8*, i8** %3, align 8
  %88 = load %struct.sockaddr_in*, %struct.sockaddr_in** %4, align 8
  %89 = getelementptr inbounds %struct.sockaddr_in, %struct.sockaddr_in* %88, i32 0, i32 0
  %90 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %89, i32 0, i32 0
  %91 = load i32, i32* %90, align 4
  %92 = call i8* @inet_ntoa(i32 %91)
  %93 = call i32 @printf(i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.2, i64 0, i64 0), i8* %87, i8* %92)
  store i32 0, i32* %2, align 4
  br label %95

94:                                               ; preds = %76
  store i32 1, i32* %2, align 4
  br label %95

95:                                               ; preds = %94, %86, %69, %24, %12
  %96 = load i32, i32* %2, align 4
  ret i32 %96
}

declare dso_local %struct.sockaddr_in* @getaddr(i8*) #1

declare dso_local %struct.rt_msghdr* @rtmsg(i32, %struct.sockaddr_in*, i32*) #1

declare dso_local i32 @xo_warn(i8*, i8*) #1

declare dso_local i32 @SA_SIZE(%struct.sockaddr_in*) #1

declare dso_local i64 @valid_type(i32) #1

declare dso_local i32 @xo_warnx(i8*, i8*) #1

declare dso_local i32 @printf(i8*, i8*, i8*) #1

declare dso_local i8* @inet_ntoa(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
