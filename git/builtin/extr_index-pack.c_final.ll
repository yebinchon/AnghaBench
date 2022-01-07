; ModuleID = '/home/carl/AnghaBench/git/builtin/extr_index-pack.c_final.c'
source_filename = "/home/carl/AnghaBench/git/builtin/extr_index-pack.c_final.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.strbuf = type { i32, i32 }
%struct.packed_git = type { i32 }

@.str = private unnamed_addr constant [5 x i8] c"pack\00", align 1
@STRBUF_INIT = common dso_local global %struct.strbuf zeroinitializer, align 4
@from_stdin = common dso_local global i64 0, align 8
@input_fd = common dso_local global i32 0, align 4
@output_fd = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [30 x i8] c"error while closing pack file\00", align 1
@.str.2 = private unnamed_addr constant [5 x i8] c"keep\00", align 1
@.str.3 = private unnamed_addr constant [9 x i8] c"promisor\00", align 1
@.str.4 = private unnamed_addr constant [23 x i8] c"cannot store pack file\00", align 1
@.str.5 = private unnamed_addr constant [4 x i8] c"idx\00", align 1
@.str.6 = private unnamed_addr constant [24 x i8] c"cannot store index file\00", align 1
@do_fsck_object = common dso_local global i64 0, align 8
@the_repository = common dso_local global i32 0, align 4
@.str.7 = private unnamed_addr constant [4 x i8] c"%s\0A\00", align 1
@.str.8 = private unnamed_addr constant [7 x i8] c"%s\09%s\0A\00", align 1
@input_len = common dso_local global i64 0, align 8
@input_buffer = common dso_local global i64 0, align 8
@input_offset = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i8*, i8*, i8*, i8*, i8*, i8*, i8*)* @final to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @final(i8* %0, i8* %1, i8* %2, i8* %3, i8* %4, i8* %5, i8* %6) #0 {
  %8 = alloca i8*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i8*, align 8
  %11 = alloca i8*, align 8
  %12 = alloca i8*, align 8
  %13 = alloca i8*, align 8
  %14 = alloca i8*, align 8
  %15 = alloca i8*, align 8
  %16 = alloca %struct.strbuf, align 4
  %17 = alloca %struct.strbuf, align 4
  %18 = alloca i32, align 4
  %19 = alloca %struct.packed_git*, align 8
  %20 = alloca %struct.strbuf, align 4
  store i8* %0, i8** %8, align 8
  store i8* %1, i8** %9, align 8
  store i8* %2, i8** %10, align 8
  store i8* %3, i8** %11, align 8
  store i8* %4, i8** %12, align 8
  store i8* %5, i8** %13, align 8
  store i8* %6, i8** %14, align 8
  store i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i64 0, i64 0), i8** %15, align 8
  %21 = bitcast %struct.strbuf* %16 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %21, i8* align 4 bitcast (%struct.strbuf* @STRBUF_INIT to i8*), i64 8, i1 false)
  %22 = bitcast %struct.strbuf* %17 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %22, i8* align 4 bitcast (%struct.strbuf* @STRBUF_INIT to i8*), i64 8, i1 false)
  %23 = load i64, i64* @from_stdin, align 8
  %24 = icmp ne i64 %23, 0
  br i1 %24, label %28, label %25

25:                                               ; preds = %7
  %26 = load i32, i32* @input_fd, align 4
  %27 = call i32 @close(i32 %26)
  br label %40

28:                                               ; preds = %7
  %29 = load i32, i32* @output_fd, align 4
  %30 = load i8*, i8** %9, align 8
  %31 = call i32 @fsync_or_die(i32 %29, i8* %30)
  %32 = load i32, i32* @output_fd, align 4
  %33 = call i32 @close(i32 %32)
  store i32 %33, i32* %18, align 4
  %34 = load i32, i32* %18, align 4
  %35 = icmp ne i32 %34, 0
  br i1 %35, label %36, label %39

36:                                               ; preds = %28
  %37 = call i32 @_(i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.1, i64 0, i64 0))
  %38 = call i32 @die_errno(i32 %37)
  br label %39

39:                                               ; preds = %36, %28
  br label %40

40:                                               ; preds = %39, %25
  %41 = load i8*, i8** %12, align 8
  %42 = icmp ne i8* %41, null
  br i1 %42, label %43, label %48

43:                                               ; preds = %40
  %44 = load i8*, i8** %12, align 8
  %45 = load i8*, i8** %8, align 8
  %46 = load i8*, i8** %14, align 8
  %47 = call i32 @write_special_file(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.2, i64 0, i64 0), i8* %44, i8* %45, i8* %46, i8** %15)
  br label %48

48:                                               ; preds = %43, %40
  %49 = load i8*, i8** %13, align 8
  %50 = icmp ne i8* %49, null
  br i1 %50, label %51, label %56

51:                                               ; preds = %48
  %52 = load i8*, i8** %13, align 8
  %53 = load i8*, i8** %8, align 8
  %54 = load i8*, i8** %14, align 8
  %55 = call i32 @write_special_file(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.3, i64 0, i64 0), i8* %52, i8* %53, i8* %54, i8** null)
  br label %56

56:                                               ; preds = %51, %48
  %57 = load i8*, i8** %8, align 8
  %58 = load i8*, i8** %9, align 8
  %59 = icmp ne i8* %57, %58
  br i1 %59, label %60, label %75

60:                                               ; preds = %56
  %61 = load i8*, i8** %8, align 8
  %62 = icmp ne i8* %61, null
  br i1 %62, label %66, label %63

63:                                               ; preds = %60
  %64 = load i8*, i8** %14, align 8
  %65 = call i8* @odb_pack_name(%struct.strbuf* %16, i8* %64, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i64 0, i64 0))
  store i8* %65, i8** %8, align 8
  br label %66

66:                                               ; preds = %63, %60
  %67 = load i8*, i8** %9, align 8
  %68 = load i8*, i8** %8, align 8
  %69 = call i64 @finalize_object_file(i8* %67, i8* %68)
  %70 = icmp ne i64 %69, 0
  br i1 %70, label %71, label %74

71:                                               ; preds = %66
  %72 = call i32 @_(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.4, i64 0, i64 0))
  %73 = call i32 @die(i32 %72)
  br label %74

74:                                               ; preds = %71, %66
  br label %82

75:                                               ; preds = %56
  %76 = load i64, i64* @from_stdin, align 8
  %77 = icmp ne i64 %76, 0
  br i1 %77, label %78, label %81

78:                                               ; preds = %75
  %79 = load i8*, i8** %8, align 8
  %80 = call i32 @chmod(i8* %79, i32 292)
  br label %81

81:                                               ; preds = %78, %75
  br label %82

82:                                               ; preds = %81, %74
  %83 = load i8*, i8** %10, align 8
  %84 = load i8*, i8** %11, align 8
  %85 = icmp ne i8* %83, %84
  br i1 %85, label %86, label %101

86:                                               ; preds = %82
  %87 = load i8*, i8** %10, align 8
  %88 = icmp ne i8* %87, null
  br i1 %88, label %92, label %89

89:                                               ; preds = %86
  %90 = load i8*, i8** %14, align 8
  %91 = call i8* @odb_pack_name(%struct.strbuf* %17, i8* %90, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.5, i64 0, i64 0))
  store i8* %91, i8** %10, align 8
  br label %92

92:                                               ; preds = %89, %86
  %93 = load i8*, i8** %11, align 8
  %94 = load i8*, i8** %10, align 8
  %95 = call i64 @finalize_object_file(i8* %93, i8* %94)
  %96 = icmp ne i64 %95, 0
  br i1 %96, label %97, label %100

97:                                               ; preds = %92
  %98 = call i32 @_(i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.6, i64 0, i64 0))
  %99 = call i32 @die(i32 %98)
  br label %100

100:                                              ; preds = %97, %92
  br label %104

101:                                              ; preds = %82
  %102 = load i8*, i8** %10, align 8
  %103 = call i32 @chmod(i8* %102, i32 292)
  br label %104

104:                                              ; preds = %101, %100
  %105 = load i64, i64* @do_fsck_object, align 8
  %106 = icmp ne i64 %105, 0
  br i1 %106, label %107, label %119

107:                                              ; preds = %104
  %108 = load i8*, i8** %10, align 8
  %109 = load i8*, i8** %10, align 8
  %110 = call i32 @strlen(i8* %109)
  %111 = call %struct.packed_git* @add_packed_git(i8* %108, i32 %110, i32 0)
  store %struct.packed_git* %111, %struct.packed_git** %19, align 8
  %112 = load %struct.packed_git*, %struct.packed_git** %19, align 8
  %113 = icmp ne %struct.packed_git* %112, null
  br i1 %113, label %114, label %118

114:                                              ; preds = %107
  %115 = load i32, i32* @the_repository, align 4
  %116 = load %struct.packed_git*, %struct.packed_git** %19, align 8
  %117 = call i32 @install_packed_git(i32 %115, %struct.packed_git* %116)
  br label %118

118:                                              ; preds = %114, %107
  br label %119

119:                                              ; preds = %118, %104
  %120 = load i64, i64* @from_stdin, align 8
  %121 = icmp ne i64 %120, 0
  br i1 %121, label %126, label %122

122:                                              ; preds = %119
  %123 = load i8*, i8** %14, align 8
  %124 = call i8* @hash_to_hex(i8* %123)
  %125 = call i32 @printf(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.7, i64 0, i64 0), i8* %124)
  br label %160

126:                                              ; preds = %119
  %127 = bitcast %struct.strbuf* %20 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %127, i8* align 4 bitcast (%struct.strbuf* @STRBUF_INIT to i8*), i64 8, i1 false)
  %128 = load i8*, i8** %15, align 8
  %129 = load i8*, i8** %14, align 8
  %130 = call i8* @hash_to_hex(i8* %129)
  %131 = call i32 @strbuf_addf(%struct.strbuf* %20, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.8, i64 0, i64 0), i8* %128, i8* %130)
  %132 = getelementptr inbounds %struct.strbuf, %struct.strbuf* %20, i32 0, i32 1
  %133 = load i32, i32* %132, align 4
  %134 = getelementptr inbounds %struct.strbuf, %struct.strbuf* %20, i32 0, i32 0
  %135 = load i32, i32* %134, align 4
  %136 = call i32 @write_or_die(i32 1, i32 %133, i32 %135)
  %137 = call i32 @strbuf_release(%struct.strbuf* %20)
  br label %138

138:                                              ; preds = %150, %126
  %139 = load i64, i64* @input_len, align 8
  %140 = icmp ne i64 %139, 0
  br i1 %140, label %141, label %159

141:                                              ; preds = %138
  %142 = load i64, i64* @input_buffer, align 8
  %143 = load i64, i64* @input_offset, align 8
  %144 = add nsw i64 %142, %143
  %145 = load i64, i64* @input_len, align 8
  %146 = call i32 @xwrite(i32 1, i64 %144, i64 %145)
  store i32 %146, i32* %18, align 4
  %147 = load i32, i32* %18, align 4
  %148 = icmp sle i32 %147, 0
  br i1 %148, label %149, label %150

149:                                              ; preds = %141
  br label %159

150:                                              ; preds = %141
  %151 = load i32, i32* %18, align 4
  %152 = sext i32 %151 to i64
  %153 = load i64, i64* @input_len, align 8
  %154 = sub nsw i64 %153, %152
  store i64 %154, i64* @input_len, align 8
  %155 = load i32, i32* %18, align 4
  %156 = sext i32 %155 to i64
  %157 = load i64, i64* @input_offset, align 8
  %158 = add nsw i64 %157, %156
  store i64 %158, i64* @input_offset, align 8
  br label %138

159:                                              ; preds = %149, %138
  br label %160

160:                                              ; preds = %159, %122
  %161 = call i32 @strbuf_release(%struct.strbuf* %17)
  %162 = call i32 @strbuf_release(%struct.strbuf* %16)
  ret void
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #1

declare dso_local i32 @close(i32) #2

declare dso_local i32 @fsync_or_die(i32, i8*) #2

declare dso_local i32 @die_errno(i32) #2

declare dso_local i32 @_(i8*) #2

declare dso_local i32 @write_special_file(i8*, i8*, i8*, i8*, i8**) #2

declare dso_local i8* @odb_pack_name(%struct.strbuf*, i8*, i8*) #2

declare dso_local i64 @finalize_object_file(i8*, i8*) #2

declare dso_local i32 @die(i32) #2

declare dso_local i32 @chmod(i8*, i32) #2

declare dso_local %struct.packed_git* @add_packed_git(i8*, i32, i32) #2

declare dso_local i32 @strlen(i8*) #2

declare dso_local i32 @install_packed_git(i32, %struct.packed_git*) #2

declare dso_local i32 @printf(i8*, i8*) #2

declare dso_local i8* @hash_to_hex(i8*) #2

declare dso_local i32 @strbuf_addf(%struct.strbuf*, i8*, i8*, i8*) #2

declare dso_local i32 @write_or_die(i32, i32, i32) #2

declare dso_local i32 @strbuf_release(%struct.strbuf*) #2

declare dso_local i32 @xwrite(i32, i64, i64) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
