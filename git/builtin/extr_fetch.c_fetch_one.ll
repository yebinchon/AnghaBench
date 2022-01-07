; ModuleID = '/home/carl/AnghaBench/git/builtin/extr_fetch.c_fetch_one.c'
source_filename = "/home/carl/AnghaBench/git/builtin/extr_fetch.c_fetch_one.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.refspec = type { i32 }
%struct.TYPE_6__ = type { %struct.TYPE_7__* }
%struct.TYPE_7__ = type { i64 }
%struct.remote = type { i64, i64, %struct.refspec }

@REFSPEC_INIT_FETCH = common dso_local global %struct.refspec zeroinitializer, align 4
@.str = private unnamed_addr constant [123 x i8] c"No remote repository specified.  Please, specify either a URL or a\0Aremote name from which new revisions should be fetched.\00", align 1
@gtransport = common dso_local global %struct.TYPE_6__* null, align 8
@prune = common dso_local global i64 0, align 8
@fetch_prune_config = common dso_local global i64 0, align 8
@PRUNE_BY_DEFAULT = common dso_local global i64 0, align 8
@prune_tags = common dso_local global i64 0, align 8
@fetch_prune_tags_config = common dso_local global i64 0, align 8
@PRUNE_TAGS_BY_DEFAULT = common dso_local global i64 0, align 8
@TAG_REFSPEC = common dso_local global i8* null, align 8
@.str.1 = private unnamed_addr constant [4 x i8] c"tag\00", align 1
@.str.2 = private unnamed_addr constant [32 x i8] c"You need to specify a tag name.\00", align 1
@.str.3 = private unnamed_addr constant [26 x i8] c"refs/tags/%s:refs/tags/%s\00", align 1
@server_options = common dso_local global %struct.TYPE_7__ zeroinitializer, align 8
@unlock_pack_on_signal = common dso_local global i32 0, align 4
@unlock_pack = common dso_local global i32 0, align 4
@SIGPIPE = common dso_local global i32 0, align 4
@SIG_IGN = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.remote*, i32, i8**, i32)* @fetch_one to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @fetch_one(%struct.remote* %0, i32 %1, i8** %2, i32 %3) #0 {
  %5 = alloca %struct.remote*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i8**, align 8
  %8 = alloca i32, align 4
  %9 = alloca %struct.refspec, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i8*, align 8
  store %struct.remote* %0, %struct.remote** %5, align 8
  store i32 %1, i32* %6, align 4
  store i8** %2, i8*** %7, align 8
  store i32 %3, i32* %8, align 4
  %15 = bitcast %struct.refspec* %9 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %15, i8* align 4 bitcast (%struct.refspec* @REFSPEC_INIT_FETCH to i8*), i64 4, i1 false)
  %16 = load %struct.remote*, %struct.remote** %5, align 8
  %17 = call i32 @remote_is_configured(%struct.remote* %16, i32 0)
  store i32 %17, i32* %13, align 4
  %18 = load %struct.remote*, %struct.remote** %5, align 8
  %19 = icmp ne %struct.remote* %18, null
  br i1 %19, label %23, label %20

20:                                               ; preds = %4
  %21 = call i32 @_(i8* getelementptr inbounds ([123 x i8], [123 x i8]* @.str, i64 0, i64 0))
  %22 = call i32 @die(i32 %21)
  br label %23

23:                                               ; preds = %20, %4
  %24 = load %struct.remote*, %struct.remote** %5, align 8
  %25 = call %struct.TYPE_6__* @prepare_transport(%struct.remote* %24, i32 1)
  store %struct.TYPE_6__* %25, %struct.TYPE_6__** @gtransport, align 8
  %26 = load i64, i64* @prune, align 8
  %27 = icmp slt i64 %26, 0
  br i1 %27, label %28, label %46

28:                                               ; preds = %23
  %29 = load %struct.remote*, %struct.remote** %5, align 8
  %30 = getelementptr inbounds %struct.remote, %struct.remote* %29, i32 0, i32 0
  %31 = load i64, i64* %30, align 8
  %32 = icmp sle i64 0, %31
  br i1 %32, label %33, label %37

33:                                               ; preds = %28
  %34 = load %struct.remote*, %struct.remote** %5, align 8
  %35 = getelementptr inbounds %struct.remote, %struct.remote* %34, i32 0, i32 0
  %36 = load i64, i64* %35, align 8
  store i64 %36, i64* @prune, align 8
  br label %45

37:                                               ; preds = %28
  %38 = load i64, i64* @fetch_prune_config, align 8
  %39 = icmp sle i64 0, %38
  br i1 %39, label %40, label %42

40:                                               ; preds = %37
  %41 = load i64, i64* @fetch_prune_config, align 8
  store i64 %41, i64* @prune, align 8
  br label %44

42:                                               ; preds = %37
  %43 = load i64, i64* @PRUNE_BY_DEFAULT, align 8
  store i64 %43, i64* @prune, align 8
  br label %44

44:                                               ; preds = %42, %40
  br label %45

45:                                               ; preds = %44, %33
  br label %46

46:                                               ; preds = %45, %23
  %47 = load i64, i64* @prune_tags, align 8
  %48 = icmp slt i64 %47, 0
  br i1 %48, label %49, label %67

49:                                               ; preds = %46
  %50 = load %struct.remote*, %struct.remote** %5, align 8
  %51 = getelementptr inbounds %struct.remote, %struct.remote* %50, i32 0, i32 1
  %52 = load i64, i64* %51, align 8
  %53 = icmp sle i64 0, %52
  br i1 %53, label %54, label %58

54:                                               ; preds = %49
  %55 = load %struct.remote*, %struct.remote** %5, align 8
  %56 = getelementptr inbounds %struct.remote, %struct.remote* %55, i32 0, i32 1
  %57 = load i64, i64* %56, align 8
  store i64 %57, i64* @prune_tags, align 8
  br label %66

58:                                               ; preds = %49
  %59 = load i64, i64* @fetch_prune_tags_config, align 8
  %60 = icmp sle i64 0, %59
  br i1 %60, label %61, label %63

61:                                               ; preds = %58
  %62 = load i64, i64* @fetch_prune_tags_config, align 8
  store i64 %62, i64* @prune_tags, align 8
  br label %65

63:                                               ; preds = %58
  %64 = load i64, i64* @PRUNE_TAGS_BY_DEFAULT, align 8
  store i64 %64, i64* @prune_tags, align 8
  br label %65

65:                                               ; preds = %63, %61
  br label %66

66:                                               ; preds = %65, %54
  br label %67

67:                                               ; preds = %66, %46
  %68 = load i32, i32* %8, align 4
  %69 = icmp ne i32 %68, 0
  br i1 %69, label %70, label %73

70:                                               ; preds = %67
  %71 = load i64, i64* @prune_tags, align 8
  %72 = icmp ne i64 %71, 0
  br label %73

73:                                               ; preds = %70, %67
  %74 = phi i1 [ false, %67 ], [ %72, %70 ]
  %75 = zext i1 %74 to i32
  store i32 %75, i32* %12, align 4
  %76 = load i32, i32* %12, align 4
  %77 = icmp ne i32 %76, 0
  br i1 %77, label %78, label %86

78:                                               ; preds = %73
  %79 = load i32, i32* %13, align 4
  %80 = icmp ne i32 %79, 0
  br i1 %80, label %81, label %86

81:                                               ; preds = %78
  %82 = load %struct.remote*, %struct.remote** %5, align 8
  %83 = getelementptr inbounds %struct.remote, %struct.remote* %82, i32 0, i32 2
  %84 = load i8*, i8** @TAG_REFSPEC, align 8
  %85 = call i32 @refspec_append(%struct.refspec* %83, i8* %84)
  br label %86

86:                                               ; preds = %81, %78, %73
  %87 = load i32, i32* %12, align 4
  %88 = icmp ne i32 %87, 0
  br i1 %88, label %89, label %98

89:                                               ; preds = %86
  %90 = load i32, i32* %6, align 4
  %91 = icmp ne i32 %90, 0
  br i1 %91, label %95, label %92

92:                                               ; preds = %89
  %93 = load i32, i32* %13, align 4
  %94 = icmp ne i32 %93, 0
  br i1 %94, label %98, label %95

95:                                               ; preds = %92, %89
  %96 = load i8*, i8** @TAG_REFSPEC, align 8
  %97 = call i32 @refspec_append(%struct.refspec* %9, i8* %96)
  br label %98

98:                                               ; preds = %95, %92, %86
  store i32 0, i32* %10, align 4
  br label %99

99:                                               ; preds = %144, %98
  %100 = load i32, i32* %10, align 4
  %101 = load i32, i32* %6, align 4
  %102 = icmp slt i32 %100, %101
  br i1 %102, label %103, label %147

103:                                              ; preds = %99
  %104 = load i8**, i8*** %7, align 8
  %105 = load i32, i32* %10, align 4
  %106 = sext i32 %105 to i64
  %107 = getelementptr inbounds i8*, i8** %104, i64 %106
  %108 = load i8*, i8** %107, align 8
  %109 = call i32 @strcmp(i8* %108, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.1, i64 0, i64 0))
  %110 = icmp ne i32 %109, 0
  br i1 %110, label %136, label %111

111:                                              ; preds = %103
  %112 = load i32, i32* %10, align 4
  %113 = add nsw i32 %112, 1
  store i32 %113, i32* %10, align 4
  %114 = load i32, i32* %10, align 4
  %115 = load i32, i32* %6, align 4
  %116 = icmp sge i32 %114, %115
  br i1 %116, label %117, label %120

117:                                              ; preds = %111
  %118 = call i32 @_(i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.2, i64 0, i64 0))
  %119 = call i32 @die(i32 %118)
  br label %120

120:                                              ; preds = %117, %111
  %121 = load i8**, i8*** %7, align 8
  %122 = load i32, i32* %10, align 4
  %123 = sext i32 %122 to i64
  %124 = getelementptr inbounds i8*, i8** %121, i64 %123
  %125 = load i8*, i8** %124, align 8
  %126 = load i8**, i8*** %7, align 8
  %127 = load i32, i32* %10, align 4
  %128 = sext i32 %127 to i64
  %129 = getelementptr inbounds i8*, i8** %126, i64 %128
  %130 = load i8*, i8** %129, align 8
  %131 = call i8* @xstrfmt(i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.3, i64 0, i64 0), i8* %125, i8* %130)
  store i8* %131, i8** %14, align 8
  %132 = load i8*, i8** %14, align 8
  %133 = call i32 @refspec_append(%struct.refspec* %9, i8* %132)
  %134 = load i8*, i8** %14, align 8
  %135 = call i32 @free(i8* %134)
  br label %143

136:                                              ; preds = %103
  %137 = load i8**, i8*** %7, align 8
  %138 = load i32, i32* %10, align 4
  %139 = sext i32 %138 to i64
  %140 = getelementptr inbounds i8*, i8** %137, i64 %139
  %141 = load i8*, i8** %140, align 8
  %142 = call i32 @refspec_append(%struct.refspec* %9, i8* %141)
  br label %143

143:                                              ; preds = %136, %120
  br label %144

144:                                              ; preds = %143
  %145 = load i32, i32* %10, align 4
  %146 = add nsw i32 %145, 1
  store i32 %146, i32* %10, align 4
  br label %99

147:                                              ; preds = %99
  %148 = load i64, i64* getelementptr inbounds (%struct.TYPE_7__, %struct.TYPE_7__* @server_options, i32 0, i32 0), align 8
  %149 = icmp ne i64 %148, 0
  br i1 %149, label %150, label %153

150:                                              ; preds = %147
  %151 = load %struct.TYPE_6__*, %struct.TYPE_6__** @gtransport, align 8
  %152 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %151, i32 0, i32 0
  store %struct.TYPE_7__* @server_options, %struct.TYPE_7__** %152, align 8
  br label %153

153:                                              ; preds = %150, %147
  %154 = load i32, i32* @unlock_pack_on_signal, align 4
  %155 = call i32 @sigchain_push_common(i32 %154)
  %156 = load i32, i32* @unlock_pack, align 4
  %157 = call i32 @atexit(i32 %156)
  %158 = load i32, i32* @SIGPIPE, align 4
  %159 = load i32, i32* @SIG_IGN, align 4
  %160 = call i32 @sigchain_push(i32 %158, i32 %159)
  %161 = load %struct.TYPE_6__*, %struct.TYPE_6__** @gtransport, align 8
  %162 = call i32 @do_fetch(%struct.TYPE_6__* %161, %struct.refspec* %9)
  store i32 %162, i32* %11, align 4
  %163 = load i32, i32* @SIGPIPE, align 4
  %164 = call i32 @sigchain_pop(i32 %163)
  %165 = call i32 @refspec_clear(%struct.refspec* %9)
  %166 = load %struct.TYPE_6__*, %struct.TYPE_6__** @gtransport, align 8
  %167 = call i32 @transport_disconnect(%struct.TYPE_6__* %166)
  store %struct.TYPE_6__* null, %struct.TYPE_6__** @gtransport, align 8
  %168 = load i32, i32* %11, align 4
  ret i32 %168
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #1

declare dso_local i32 @remote_is_configured(%struct.remote*, i32) #2

declare dso_local i32 @die(i32) #2

declare dso_local i32 @_(i8*) #2

declare dso_local %struct.TYPE_6__* @prepare_transport(%struct.remote*, i32) #2

declare dso_local i32 @refspec_append(%struct.refspec*, i8*) #2

declare dso_local i32 @strcmp(i8*, i8*) #2

declare dso_local i8* @xstrfmt(i8*, i8*, i8*) #2

declare dso_local i32 @free(i8*) #2

declare dso_local i32 @sigchain_push_common(i32) #2

declare dso_local i32 @atexit(i32) #2

declare dso_local i32 @sigchain_push(i32, i32) #2

declare dso_local i32 @do_fetch(%struct.TYPE_6__*, %struct.refspec*) #2

declare dso_local i32 @sigchain_pop(i32) #2

declare dso_local i32 @refspec_clear(%struct.refspec*) #2

declare dso_local i32 @transport_disconnect(%struct.TYPE_6__*) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
