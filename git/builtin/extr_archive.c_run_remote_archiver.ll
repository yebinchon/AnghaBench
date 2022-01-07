; ModuleID = '/home/carl/AnghaBench/git/builtin/extr_archive.c_run_remote_archiver.c'
source_filename = "/home/carl/AnghaBench/git/builtin/extr_archive.c_run_remote_archiver.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.transport = type { i32 }
%struct.remote = type { i32* }
%struct.packet_reader = type { i64 }

@.str = private unnamed_addr constant [32 x i8] c"git archive: Remote with no URL\00", align 1
@.str.1 = private unnamed_addr constant [19 x i8] c"git-upload-archive\00", align 1
@.str.2 = private unnamed_addr constant [22 x i8] c"argument --format=%s\0A\00", align 1
@.str.3 = private unnamed_addr constant [13 x i8] c"argument %s\0A\00", align 1
@PACKET_READ_CHOMP_NEWLINE = common dso_local global i32 0, align 4
@PACKET_READ_DIE_ON_ERR_PACKET = common dso_local global i32 0, align 4
@PACKET_READ_NORMAL = common dso_local global i64 0, align 8
@.str.4 = private unnamed_addr constant [50 x i8] c"git archive: expected ACK/NAK, got a flush packet\00", align 1
@.str.5 = private unnamed_addr constant [4 x i8] c"ACK\00", align 1
@.str.6 = private unnamed_addr constant [6 x i8] c"NACK \00", align 1
@.str.7 = private unnamed_addr constant [21 x i8] c"git archive: NACK %s\00", align 1
@.str.8 = private unnamed_addr constant [28 x i8] c"git archive: protocol error\00", align 1
@PACKET_READ_FLUSH = common dso_local global i64 0, align 8
@.str.9 = private unnamed_addr constant [30 x i8] c"git archive: expected a flush\00", align 1
@.str.10 = private unnamed_addr constant [8 x i8] c"archive\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i8**, i8*, i8*, i8*)* @run_remote_archiver to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @run_remote_archiver(i32 %0, i8** %1, i8* %2, i8* %3, i8* %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca i8**, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i8*, align 8
  %11 = alloca [2 x i32], align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca %struct.transport*, align 8
  %15 = alloca %struct.remote*, align 8
  %16 = alloca %struct.packet_reader, align 8
  %17 = alloca i8*, align 8
  store i32 %0, i32* %6, align 4
  store i8** %1, i8*** %7, align 8
  store i8* %2, i8** %8, align 8
  store i8* %3, i8** %9, align 8
  store i8* %4, i8** %10, align 8
  %18 = load i8*, i8** %8, align 8
  %19 = call %struct.remote* @remote_get(i8* %18)
  store %struct.remote* %19, %struct.remote** %15, align 8
  %20 = load %struct.remote*, %struct.remote** %15, align 8
  %21 = getelementptr inbounds %struct.remote, %struct.remote* %20, i32 0, i32 0
  %22 = load i32*, i32** %21, align 8
  %23 = getelementptr inbounds i32, i32* %22, i64 0
  %24 = load i32, i32* %23, align 4
  %25 = icmp ne i32 %24, 0
  br i1 %25, label %29, label %26

26:                                               ; preds = %5
  %27 = call i32 @_(i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str, i64 0, i64 0))
  %28 = call i32 (i32, ...) @die(i32 %27)
  br label %29

29:                                               ; preds = %26, %5
  %30 = load %struct.remote*, %struct.remote** %15, align 8
  %31 = load %struct.remote*, %struct.remote** %15, align 8
  %32 = getelementptr inbounds %struct.remote, %struct.remote* %31, i32 0, i32 0
  %33 = load i32*, i32** %32, align 8
  %34 = getelementptr inbounds i32, i32* %33, i64 0
  %35 = load i32, i32* %34, align 4
  %36 = call %struct.transport* @transport_get(%struct.remote* %30, i32 %35)
  store %struct.transport* %36, %struct.transport** %14, align 8
  %37 = load %struct.transport*, %struct.transport** %14, align 8
  %38 = load i8*, i8** %9, align 8
  %39 = getelementptr inbounds [2 x i32], [2 x i32]* %11, i64 0, i64 0
  %40 = call i32 @transport_connect(%struct.transport* %37, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.1, i64 0, i64 0), i8* %38, i32* %39)
  %41 = load i8*, i8** %10, align 8
  %42 = icmp ne i8* %41, null
  br i1 %42, label %43, label %54

43:                                               ; preds = %29
  %44 = load i8*, i8** %10, align 8
  %45 = call i8* @archive_format_from_filename(i8* %44)
  store i8* %45, i8** %17, align 8
  %46 = load i8*, i8** %17, align 8
  %47 = icmp ne i8* %46, null
  br i1 %47, label %48, label %53

48:                                               ; preds = %43
  %49 = getelementptr inbounds [2 x i32], [2 x i32]* %11, i64 0, i64 1
  %50 = load i32, i32* %49, align 4
  %51 = load i8*, i8** %17, align 8
  %52 = call i32 @packet_write_fmt(i32 %50, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.2, i64 0, i64 0), i8* %51)
  br label %53

53:                                               ; preds = %48, %43
  br label %54

54:                                               ; preds = %53, %29
  store i32 1, i32* %12, align 4
  br label %55

55:                                               ; preds = %68, %54
  %56 = load i32, i32* %12, align 4
  %57 = load i32, i32* %6, align 4
  %58 = icmp slt i32 %56, %57
  br i1 %58, label %59, label %71

59:                                               ; preds = %55
  %60 = getelementptr inbounds [2 x i32], [2 x i32]* %11, i64 0, i64 1
  %61 = load i32, i32* %60, align 4
  %62 = load i8**, i8*** %7, align 8
  %63 = load i32, i32* %12, align 4
  %64 = sext i32 %63 to i64
  %65 = getelementptr inbounds i8*, i8** %62, i64 %64
  %66 = load i8*, i8** %65, align 8
  %67 = call i32 @packet_write_fmt(i32 %61, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.3, i64 0, i64 0), i8* %66)
  br label %68

68:                                               ; preds = %59
  %69 = load i32, i32* %12, align 4
  %70 = add nsw i32 %69, 1
  store i32 %70, i32* %12, align 4
  br label %55

71:                                               ; preds = %55
  %72 = getelementptr inbounds [2 x i32], [2 x i32]* %11, i64 0, i64 1
  %73 = load i32, i32* %72, align 4
  %74 = call i32 @packet_flush(i32 %73)
  %75 = getelementptr inbounds [2 x i32], [2 x i32]* %11, i64 0, i64 0
  %76 = load i32, i32* %75, align 4
  %77 = load i32, i32* @PACKET_READ_CHOMP_NEWLINE, align 4
  %78 = load i32, i32* @PACKET_READ_DIE_ON_ERR_PACKET, align 4
  %79 = or i32 %77, %78
  %80 = call i32 @packet_reader_init(%struct.packet_reader* %16, i32 %76, i32* null, i32 0, i32 %79)
  %81 = call i64 @packet_reader_read(%struct.packet_reader* %16)
  %82 = load i64, i64* @PACKET_READ_NORMAL, align 8
  %83 = icmp ne i64 %81, %82
  br i1 %83, label %84, label %87

84:                                               ; preds = %71
  %85 = call i32 @_(i8* getelementptr inbounds ([50 x i8], [50 x i8]* @.str.4, i64 0, i64 0))
  %86 = call i32 (i32, ...) @die(i32 %85)
  br label %87

87:                                               ; preds = %84, %71
  %88 = getelementptr inbounds %struct.packet_reader, %struct.packet_reader* %16, i32 0, i32 0
  %89 = load i64, i64* %88, align 8
  %90 = call i64 @strcmp(i64 %89, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.5, i64 0, i64 0))
  %91 = icmp ne i64 %90, 0
  br i1 %91, label %92, label %106

92:                                               ; preds = %87
  %93 = getelementptr inbounds %struct.packet_reader, %struct.packet_reader* %16, i32 0, i32 0
  %94 = load i64, i64* %93, align 8
  %95 = call i64 @starts_with(i64 %94, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.6, i64 0, i64 0))
  %96 = icmp ne i64 %95, 0
  br i1 %96, label %97, label %103

97:                                               ; preds = %92
  %98 = call i32 @_(i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.7, i64 0, i64 0))
  %99 = getelementptr inbounds %struct.packet_reader, %struct.packet_reader* %16, i32 0, i32 0
  %100 = load i64, i64* %99, align 8
  %101 = add nsw i64 %100, 5
  %102 = call i32 (i32, ...) @die(i32 %98, i64 %101)
  br label %103

103:                                              ; preds = %97, %92
  %104 = call i32 @_(i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.8, i64 0, i64 0))
  %105 = call i32 (i32, ...) @die(i32 %104)
  br label %106

106:                                              ; preds = %103, %87
  %107 = call i64 @packet_reader_read(%struct.packet_reader* %16)
  %108 = load i64, i64* @PACKET_READ_FLUSH, align 8
  %109 = icmp ne i64 %107, %108
  br i1 %109, label %110, label %113

110:                                              ; preds = %106
  %111 = call i32 @_(i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.9, i64 0, i64 0))
  %112 = call i32 (i32, ...) @die(i32 %111)
  br label %113

113:                                              ; preds = %110, %106
  %114 = getelementptr inbounds [2 x i32], [2 x i32]* %11, i64 0, i64 0
  %115 = load i32, i32* %114, align 4
  %116 = call i32 @recv_sideband(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.10, i64 0, i64 0), i32 %115, i32 1)
  store i32 %116, i32* %13, align 4
  %117 = load %struct.transport*, %struct.transport** %14, align 8
  %118 = call i32 @transport_disconnect(%struct.transport* %117)
  %119 = load i32, i32* %13, align 4
  %120 = or i32 %119, %118
  store i32 %120, i32* %13, align 4
  %121 = load i32, i32* %13, align 4
  %122 = icmp ne i32 %121, 0
  %123 = xor i1 %122, true
  %124 = xor i1 %123, true
  %125 = zext i1 %124 to i32
  ret i32 %125
}

declare dso_local %struct.remote* @remote_get(i8*) #1

declare dso_local i32 @die(i32, ...) #1

declare dso_local i32 @_(i8*) #1

declare dso_local %struct.transport* @transport_get(%struct.remote*, i32) #1

declare dso_local i32 @transport_connect(%struct.transport*, i8*, i8*, i32*) #1

declare dso_local i8* @archive_format_from_filename(i8*) #1

declare dso_local i32 @packet_write_fmt(i32, i8*, i8*) #1

declare dso_local i32 @packet_flush(i32) #1

declare dso_local i32 @packet_reader_init(%struct.packet_reader*, i32, i32*, i32, i32) #1

declare dso_local i64 @packet_reader_read(%struct.packet_reader*) #1

declare dso_local i64 @strcmp(i64, i8*) #1

declare dso_local i64 @starts_with(i64, i8*) #1

declare dso_local i32 @recv_sideband(i8*, i32, i32) #1

declare dso_local i32 @transport_disconnect(%struct.transport*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
