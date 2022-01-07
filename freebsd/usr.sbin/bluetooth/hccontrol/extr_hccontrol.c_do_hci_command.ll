; ModuleID = '/home/carl/AnghaBench/freebsd/usr.sbin/bluetooth/hccontrol/extr_hccontrol.c_do_hci_command.c'
source_filename = "/home/carl/AnghaBench/freebsd/usr.sbin/bluetooth/hccontrol/extr_hccontrol.c_do_hci_command.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.hci_command = type { i32 (i32, i32, i8**)*, i8*, i8* }

@.str = private unnamed_addr constant [5 x i8] c"help\00", align 1
@stdout = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [21 x i8] c"Supported commands:\0A\00", align 1
@link_control_commands = common dso_local global i32 0, align 4
@link_policy_commands = common dso_local global i32 0, align 4
@host_controller_baseband_commands = common dso_local global i32 0, align 4
@info_commands = common dso_local global i32 0, align 4
@status_commands = common dso_local global i32 0, align 4
@le_commands = common dso_local global i32 0, align 4
@node_commands = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [42 x i8] c"\0AFor more information use 'help command'\0A\00", align 1
@.str.3 = private unnamed_addr constant [23 x i8] c"Unknown command: \22%s\22\0A\00", align 1
@.str.4 = private unnamed_addr constant [36 x i8] c"Could not execute command \22%s\22. %s\0A\00", align 1
@errno = common dso_local global i32 0, align 4
@.str.5 = private unnamed_addr constant [14 x i8] c"Usage: %s\0A%s\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i8*, i32, i8**)* @do_hci_command to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @do_hci_command(i8* %0, i32 %1, i8** %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i8*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i8**, align 8
  %8 = alloca i8*, align 8
  %9 = alloca %struct.hci_command*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  store i8* %0, i8** %5, align 8
  store i32 %1, i32* %6, align 4
  store i8** %2, i8*** %7, align 8
  %13 = load i8**, i8*** %7, align 8
  %14 = getelementptr inbounds i8*, i8** %13, i64 0
  %15 = load i8*, i8** %14, align 8
  store i8* %15, i8** %8, align 8
  store %struct.hci_command* null, %struct.hci_command** %9, align 8
  store i32 0, i32* %12, align 4
  %16 = load i8*, i8** %8, align 8
  %17 = call i64 @strcasecmp(i8* %16, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i64 0, i64 0))
  %18 = icmp eq i64 %17, 0
  br i1 %18, label %19, label %49

19:                                               ; preds = %3
  %20 = load i32, i32* %6, align 4
  %21 = add nsw i32 %20, -1
  store i32 %21, i32* %6, align 4
  %22 = load i8**, i8*** %7, align 8
  %23 = getelementptr inbounds i8*, i8** %22, i32 1
  store i8** %23, i8*** %7, align 8
  %24 = load i32, i32* %6, align 4
  %25 = icmp sle i32 %24, 0
  br i1 %25, label %26, label %45

26:                                               ; preds = %19
  %27 = load i32, i32* @stdout, align 4
  %28 = call i32 (i32, i8*, ...) @fprintf(i32 %27, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.1, i64 0, i64 0))
  %29 = load i32, i32* @link_control_commands, align 4
  %30 = call i32 @print_hci_command(i32 %29)
  %31 = load i32, i32* @link_policy_commands, align 4
  %32 = call i32 @print_hci_command(i32 %31)
  %33 = load i32, i32* @host_controller_baseband_commands, align 4
  %34 = call i32 @print_hci_command(i32 %33)
  %35 = load i32, i32* @info_commands, align 4
  %36 = call i32 @print_hci_command(i32 %35)
  %37 = load i32, i32* @status_commands, align 4
  %38 = call i32 @print_hci_command(i32 %37)
  %39 = load i32, i32* @le_commands, align 4
  %40 = call i32 @print_hci_command(i32 %39)
  %41 = load i32, i32* @node_commands, align 4
  %42 = call i32 @print_hci_command(i32 %41)
  %43 = load i32, i32* @stdout, align 4
  %44 = call i32 (i32, i8*, ...) @fprintf(i32 %43, i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str.2, i64 0, i64 0))
  store i32 129, i32* %4, align 4
  br label %142

45:                                               ; preds = %19
  store i32 1, i32* %12, align 4
  %46 = load i8**, i8*** %7, align 8
  %47 = getelementptr inbounds i8*, i8** %46, i64 0
  %48 = load i8*, i8** %47, align 8
  store i8* %48, i8** %8, align 8
  br label %49

49:                                               ; preds = %45, %3
  %50 = load i8*, i8** %8, align 8
  %51 = load i32, i32* @link_control_commands, align 4
  %52 = call %struct.hci_command* @find_hci_command(i8* %50, i32 %51)
  store %struct.hci_command* %52, %struct.hci_command** %9, align 8
  %53 = load %struct.hci_command*, %struct.hci_command** %9, align 8
  %54 = icmp ne %struct.hci_command* %53, null
  br i1 %54, label %55, label %56

55:                                               ; preds = %49
  br label %102

56:                                               ; preds = %49
  %57 = load i8*, i8** %8, align 8
  %58 = load i32, i32* @link_policy_commands, align 4
  %59 = call %struct.hci_command* @find_hci_command(i8* %57, i32 %58)
  store %struct.hci_command* %59, %struct.hci_command** %9, align 8
  %60 = load %struct.hci_command*, %struct.hci_command** %9, align 8
  %61 = icmp ne %struct.hci_command* %60, null
  br i1 %61, label %62, label %63

62:                                               ; preds = %56
  br label %102

63:                                               ; preds = %56
  %64 = load i8*, i8** %8, align 8
  %65 = load i32, i32* @host_controller_baseband_commands, align 4
  %66 = call %struct.hci_command* @find_hci_command(i8* %64, i32 %65)
  store %struct.hci_command* %66, %struct.hci_command** %9, align 8
  %67 = load %struct.hci_command*, %struct.hci_command** %9, align 8
  %68 = icmp ne %struct.hci_command* %67, null
  br i1 %68, label %69, label %70

69:                                               ; preds = %63
  br label %102

70:                                               ; preds = %63
  %71 = load i8*, i8** %8, align 8
  %72 = load i32, i32* @info_commands, align 4
  %73 = call %struct.hci_command* @find_hci_command(i8* %71, i32 %72)
  store %struct.hci_command* %73, %struct.hci_command** %9, align 8
  %74 = load %struct.hci_command*, %struct.hci_command** %9, align 8
  %75 = icmp ne %struct.hci_command* %74, null
  br i1 %75, label %76, label %77

76:                                               ; preds = %70
  br label %102

77:                                               ; preds = %70
  %78 = load i8*, i8** %8, align 8
  %79 = load i32, i32* @status_commands, align 4
  %80 = call %struct.hci_command* @find_hci_command(i8* %78, i32 %79)
  store %struct.hci_command* %80, %struct.hci_command** %9, align 8
  %81 = load %struct.hci_command*, %struct.hci_command** %9, align 8
  %82 = icmp ne %struct.hci_command* %81, null
  br i1 %82, label %83, label %84

83:                                               ; preds = %77
  br label %102

84:                                               ; preds = %77
  %85 = load i8*, i8** %8, align 8
  %86 = load i32, i32* @le_commands, align 4
  %87 = call %struct.hci_command* @find_hci_command(i8* %85, i32 %86)
  store %struct.hci_command* %87, %struct.hci_command** %9, align 8
  %88 = load %struct.hci_command*, %struct.hci_command** %9, align 8
  %89 = icmp ne %struct.hci_command* %88, null
  br i1 %89, label %90, label %91

90:                                               ; preds = %84
  br label %102

91:                                               ; preds = %84
  %92 = load i8*, i8** %8, align 8
  %93 = load i32, i32* @node_commands, align 4
  %94 = call %struct.hci_command* @find_hci_command(i8* %92, i32 %93)
  store %struct.hci_command* %94, %struct.hci_command** %9, align 8
  %95 = load %struct.hci_command*, %struct.hci_command** %9, align 8
  %96 = icmp eq %struct.hci_command* %95, null
  br i1 %96, label %97, label %101

97:                                               ; preds = %91
  %98 = load i32, i32* @stdout, align 4
  %99 = load i8*, i8** %8, align 8
  %100 = call i32 (i32, i8*, ...) @fprintf(i32 %98, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.3, i64 0, i64 0), i8* %99)
  store i32 131, i32* %4, align 4
  br label %142

101:                                              ; preds = %91
  br label %102

102:                                              ; preds = %101, %90, %83, %76, %69, %62, %55
  %103 = load i32, i32* %12, align 4
  %104 = icmp ne i32 %103, 0
  br i1 %104, label %119, label %105

105:                                              ; preds = %102
  %106 = load i8*, i8** %5, align 8
  %107 = call i32 @socket_open(i8* %106)
  store i32 %107, i32* %10, align 4
  %108 = load %struct.hci_command*, %struct.hci_command** %9, align 8
  %109 = getelementptr inbounds %struct.hci_command, %struct.hci_command* %108, i32 0, i32 0
  %110 = load i32 (i32, i32, i8**)*, i32 (i32, i32, i8**)** %109, align 8
  %111 = load i32, i32* %10, align 4
  %112 = load i32, i32* %6, align 4
  %113 = add nsw i32 %112, -1
  store i32 %113, i32* %6, align 4
  %114 = load i8**, i8*** %7, align 8
  %115 = getelementptr inbounds i8*, i8** %114, i32 1
  store i8** %115, i8*** %7, align 8
  %116 = call i32 %110(i32 %111, i32 %113, i8** %115)
  store i32 %116, i32* %11, align 4
  %117 = load i32, i32* %10, align 4
  %118 = call i32 @close(i32 %117)
  br label %120

119:                                              ; preds = %102
  store i32 128, i32* %11, align 4
  br label %120

120:                                              ; preds = %119, %105
  %121 = load i32, i32* %11, align 4
  switch i32 %121, label %138 [
    i32 129, label %122
    i32 130, label %122
    i32 131, label %123
    i32 128, label %129
  ]

122:                                              ; preds = %120, %120
  br label %140

123:                                              ; preds = %120
  %124 = load i32, i32* @stdout, align 4
  %125 = load i8*, i8** %8, align 8
  %126 = load i32, i32* @errno, align 4
  %127 = call i8* @strerror(i32 %126)
  %128 = call i32 (i32, i8*, ...) @fprintf(i32 %124, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.4, i64 0, i64 0), i8* %125, i8* %127)
  br label %140

129:                                              ; preds = %120
  %130 = load i32, i32* @stdout, align 4
  %131 = load %struct.hci_command*, %struct.hci_command** %9, align 8
  %132 = getelementptr inbounds %struct.hci_command, %struct.hci_command* %131, i32 0, i32 1
  %133 = load i8*, i8** %132, align 8
  %134 = load %struct.hci_command*, %struct.hci_command** %9, align 8
  %135 = getelementptr inbounds %struct.hci_command, %struct.hci_command* %134, i32 0, i32 2
  %136 = load i8*, i8** %135, align 8
  %137 = call i32 (i32, i8*, ...) @fprintf(i32 %130, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.5, i64 0, i64 0), i8* %133, i8* %136)
  br label %140

138:                                              ; preds = %120
  %139 = call i32 @assert(i32 0)
  br label %140

140:                                              ; preds = %138, %129, %123, %122
  %141 = load i32, i32* %11, align 4
  store i32 %141, i32* %4, align 4
  br label %142

142:                                              ; preds = %140, %97, %26
  %143 = load i32, i32* %4, align 4
  ret i32 %143
}

declare dso_local i64 @strcasecmp(i8*, i8*) #1

declare dso_local i32 @fprintf(i32, i8*, ...) #1

declare dso_local i32 @print_hci_command(i32) #1

declare dso_local %struct.hci_command* @find_hci_command(i8*, i32) #1

declare dso_local i32 @socket_open(i8*) #1

declare dso_local i32 @close(i32) #1

declare dso_local i8* @strerror(i32) #1

declare dso_local i32 @assert(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
