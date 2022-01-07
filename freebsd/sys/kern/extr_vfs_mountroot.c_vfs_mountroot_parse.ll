; ModuleID = '/home/carl/AnghaBench/freebsd/sys/kern/extr_vfs_mountroot.c_vfs_mountroot_parse.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/kern/extr_vfs_mountroot.c_vfs_mountroot_parse.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sbuf = type { i32 }
%struct.mount = type { i32 }

@root_mount_mddev = common dso_local global i32 0, align 4
@mnt_list = common dso_local global i32 0, align 4
@EDOOFUS = common dso_local global i32 0, align 4
@root_mount_onfail = common dso_local global i32 0, align 4
@CC_NONWHITESPACE = common dso_local global i8 0, align 1
@PE_EOL = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [47 x i8] c"mountroot: invalid file system specification.\0A\00", align 1
@.str.1 = private unnamed_addr constant [43 x i8] c"mountroot: advancing to next directive...\0A\00", align 1
@.str.2 = private unnamed_addr constant [38 x i8] c"mountroot: unable to (re-)mount root.\00", align 1
@RB_NOSYNC = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.sbuf*, %struct.mount*)* @vfs_mountroot_parse to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @vfs_mountroot_parse(%struct.sbuf* %0, %struct.mount* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.sbuf*, align 8
  %5 = alloca %struct.mount*, align 8
  %6 = alloca %struct.mount*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i32, align 4
  store %struct.sbuf* %0, %struct.sbuf** %4, align 8
  store %struct.mount* %1, %struct.mount** %5, align 8
  store i32 -1, i32* @root_mount_mddev, align 4
  br label %9

9:                                                ; preds = %75, %2
  %10 = load %struct.sbuf*, %struct.sbuf** %4, align 8
  %11 = call i8* @sbuf_data(%struct.sbuf* %10)
  store i8* %11, i8** %7, align 8
  %12 = load %struct.mount*, %struct.mount** %5, align 8
  %13 = load i32, i32* @mnt_list, align 4
  %14 = call %struct.mount* @TAILQ_NEXT(%struct.mount* %12, i32 %13)
  store %struct.mount* %14, %struct.mount** %6, align 8
  %15 = load %struct.mount*, %struct.mount** %6, align 8
  %16 = icmp eq %struct.mount* %15, null
  br i1 %16, label %17, label %18

17:                                               ; preds = %9
  br label %20

18:                                               ; preds = %9
  %19 = load i32, i32* @EDOOFUS, align 4
  br label %20

20:                                               ; preds = %18, %17
  %21 = phi i32 [ 0, %17 ], [ %19, %18 ]
  store i32 %21, i32* %8, align 4
  store i32 131, i32* @root_mount_onfail, align 4
  br label %22

22:                                               ; preds = %62, %31, %20
  %23 = load %struct.mount*, %struct.mount** %6, align 8
  %24 = icmp eq %struct.mount* %23, null
  br i1 %24, label %25, label %66

25:                                               ; preds = %22
  %26 = load i8, i8* @CC_NONWHITESPACE, align 1
  %27 = call i32 @parse_skipto(i8** %7, i8 signext %26)
  store i32 %27, i32* %8, align 4
  %28 = load i32, i32* %8, align 4
  %29 = load i32, i32* @PE_EOL, align 4
  %30 = icmp eq i32 %28, %29
  br i1 %30, label %31, label %33

31:                                               ; preds = %25
  %32 = call i32 @parse_advance(i8** %7)
  br label %22

33:                                               ; preds = %25
  %34 = load i32, i32* %8, align 4
  %35 = icmp slt i32 %34, 0
  br i1 %35, label %36, label %37

36:                                               ; preds = %33
  br label %66

37:                                               ; preds = %33
  %38 = call signext i8 @parse_peek(i8** %7)
  %39 = sext i8 %38 to i32
  switch i32 %39, label %44 [
    i32 35, label %40
    i32 46, label %42
  ]

40:                                               ; preds = %37
  %41 = call i32 @parse_skipto(i8** %7, i8 signext 10)
  store i32 %41, i32* %8, align 4
  br label %51

42:                                               ; preds = %37
  %43 = call i32 @parse_directive(i8** %7)
  store i32 %43, i32* %8, align 4
  br label %51

44:                                               ; preds = %37
  %45 = call i32 @parse_mount(i8** %7)
  store i32 %45, i32* %8, align 4
  %46 = load i32, i32* %8, align 4
  %47 = icmp eq i32 %46, -1
  br i1 %47, label %48, label %50

48:                                               ; preds = %44
  %49 = call i32 @printf(i8* getelementptr inbounds ([47 x i8], [47 x i8]* @.str, i64 0, i64 0))
  store i32 0, i32* %8, align 4
  br label %50

50:                                               ; preds = %48, %44
  br label %51

51:                                               ; preds = %50, %42, %40
  %52 = load i32, i32* %8, align 4
  %53 = icmp slt i32 %52, 0
  br i1 %53, label %54, label %55

54:                                               ; preds = %51
  br label %66

55:                                               ; preds = %51
  %56 = call signext i8 @parse_peek(i8** %7)
  %57 = sext i8 %56 to i32
  %58 = icmp ne i32 %57, 10
  br i1 %58, label %59, label %62

59:                                               ; preds = %55
  %60 = call i32 @printf(i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str.1, i64 0, i64 0))
  %61 = call i32 @parse_skipto(i8** %7, i8 signext 10)
  br label %62

62:                                               ; preds = %59, %55
  %63 = load %struct.mount*, %struct.mount** %5, align 8
  %64 = load i32, i32* @mnt_list, align 4
  %65 = call %struct.mount* @TAILQ_NEXT(%struct.mount* %63, i32 %64)
  store %struct.mount* %65, %struct.mount** %6, align 8
  br label %22

66:                                               ; preds = %54, %36, %22
  %67 = load %struct.mount*, %struct.mount** %6, align 8
  %68 = icmp ne %struct.mount* %67, null
  br i1 %68, label %69, label %70

69:                                               ; preds = %66
  store i32 0, i32* %3, align 4
  br label %81

70:                                               ; preds = %66
  %71 = load i32, i32* @root_mount_onfail, align 4
  switch i32 %71, label %79 [
    i32 131, label %72
    i32 130, label %73
    i32 128, label %75
    i32 129, label %76
  ]

72:                                               ; preds = %70
  br label %79

73:                                               ; preds = %70
  %74 = call i32 @panic(i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.2, i64 0, i64 0))
  br label %75

75:                                               ; preds = %70, %73
  br label %9

76:                                               ; preds = %70
  %77 = load i32, i32* @RB_NOSYNC, align 4
  %78 = call i32 @kern_reboot(i32 %77)
  br label %79

79:                                               ; preds = %76, %70, %72
  %80 = load i32, i32* %8, align 4
  store i32 %80, i32* %3, align 4
  br label %81

81:                                               ; preds = %79, %69
  %82 = load i32, i32* %3, align 4
  ret i32 %82
}

declare dso_local i8* @sbuf_data(%struct.sbuf*) #1

declare dso_local %struct.mount* @TAILQ_NEXT(%struct.mount*, i32) #1

declare dso_local i32 @parse_skipto(i8**, i8 signext) #1

declare dso_local i32 @parse_advance(i8**) #1

declare dso_local signext i8 @parse_peek(i8**) #1

declare dso_local i32 @parse_directive(i8**) #1

declare dso_local i32 @parse_mount(i8**) #1

declare dso_local i32 @printf(i8*) #1

declare dso_local i32 @panic(i8*) #1

declare dso_local i32 @kern_reboot(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
