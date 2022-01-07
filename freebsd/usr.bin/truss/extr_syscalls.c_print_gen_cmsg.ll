; ModuleID = '/home/carl/AnghaBench/freebsd/usr.bin/truss/extr_syscalls.c_print_gen_cmsg.c'
source_filename = "/home/carl/AnghaBench/freebsd/usr.bin/truss/extr_syscalls.c_print_gen_cmsg.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.cmsghdr = type { i32 }

@.str = private unnamed_addr constant [2 x i8] c"{\00", align 1
@.str.1 = private unnamed_addr constant [9 x i8] c"%s0x%02x\00", align 1
@.str.2 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@.str.3 = private unnamed_addr constant [2 x i8] c",\00", align 1
@.str.4 = private unnamed_addr constant [2 x i8] c"}\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32*, %struct.cmsghdr*)* @print_gen_cmsg to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @print_gen_cmsg(i32* %0, %struct.cmsghdr* %1) #0 {
  %3 = alloca i32*, align 8
  %4 = alloca %struct.cmsghdr*, align 8
  %5 = alloca i32*, align 8
  store i32* %0, i32** %3, align 8
  store %struct.cmsghdr* %1, %struct.cmsghdr** %4, align 8
  %6 = load i32*, i32** %3, align 8
  %7 = call i32 @fputs(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str, i64 0, i64 0), i32* %6)
  %8 = load %struct.cmsghdr*, %struct.cmsghdr** %4, align 8
  %9 = call i32* @CMSG_DATA(%struct.cmsghdr* %8)
  store i32* %9, i32** %5, align 8
  br label %10

10:                                               ; preds = %31, %2
  %11 = load i32*, i32** %5, align 8
  %12 = load %struct.cmsghdr*, %struct.cmsghdr** %4, align 8
  %13 = bitcast %struct.cmsghdr* %12 to i32*
  %14 = load %struct.cmsghdr*, %struct.cmsghdr** %4, align 8
  %15 = getelementptr inbounds %struct.cmsghdr, %struct.cmsghdr* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 4
  %17 = sext i32 %16 to i64
  %18 = getelementptr inbounds i32, i32* %13, i64 %17
  %19 = icmp ult i32* %11, %18
  br i1 %19, label %20, label %34

20:                                               ; preds = %10
  %21 = load i32*, i32** %3, align 8
  %22 = load i32*, i32** %5, align 8
  %23 = load %struct.cmsghdr*, %struct.cmsghdr** %4, align 8
  %24 = call i32* @CMSG_DATA(%struct.cmsghdr* %23)
  %25 = icmp eq i32* %22, %24
  %26 = zext i1 %25 to i64
  %27 = select i1 %25, i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.2, i64 0, i64 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.3, i64 0, i64 0)
  %28 = load i32*, i32** %5, align 8
  %29 = load i32, i32* %28, align 4
  %30 = call i32 @fprintf(i32* %21, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.1, i64 0, i64 0), i8* %27, i32 %29)
  br label %31

31:                                               ; preds = %20
  %32 = load i32*, i32** %5, align 8
  %33 = getelementptr inbounds i32, i32* %32, i32 1
  store i32* %33, i32** %5, align 8
  br label %10

34:                                               ; preds = %10
  %35 = load i32*, i32** %3, align 8
  %36 = call i32 @fputs(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.4, i64 0, i64 0), i32* %35)
  ret void
}

declare dso_local i32 @fputs(i8*, i32*) #1

declare dso_local i32* @CMSG_DATA(%struct.cmsghdr*) #1

declare dso_local i32 @fprintf(i32*, i8*, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
