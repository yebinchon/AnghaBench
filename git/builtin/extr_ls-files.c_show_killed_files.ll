; ModuleID = '/home/carl/AnghaBench/git/builtin/extr_ls-files.c_show_killed_files.c'
source_filename = "/home/carl/AnghaBench/git/builtin/extr_ls-files.c_show_killed_files.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.index_state = type { i32, %struct.TYPE_3__** }
%struct.TYPE_3__ = type { i8* }
%struct.dir_struct = type { i32, %struct.dir_entry** }
%struct.dir_entry = type { i8*, i32 }

@.str = private unnamed_addr constant [27 x i8] c"killed-file %.*s not found\00", align 1
@tag_killed = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.index_state*, %struct.dir_struct*)* @show_killed_files to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @show_killed_files(%struct.index_state* %0, %struct.dir_struct* %1) #0 {
  %3 = alloca %struct.index_state*, align 8
  %4 = alloca %struct.dir_struct*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.dir_entry*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  store %struct.index_state* %0, %struct.index_state** %3, align 8
  store %struct.dir_struct* %1, %struct.dir_struct** %4, align 8
  store i32 0, i32* %5, align 4
  br label %12

12:                                               ; preds = %185, %2
  %13 = load i32, i32* %5, align 4
  %14 = load %struct.dir_struct*, %struct.dir_struct** %4, align 8
  %15 = getelementptr inbounds %struct.dir_struct, %struct.dir_struct* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 8
  %17 = icmp slt i32 %13, %16
  br i1 %17, label %18, label %188

18:                                               ; preds = %12
  %19 = load %struct.dir_struct*, %struct.dir_struct** %4, align 8
  %20 = getelementptr inbounds %struct.dir_struct, %struct.dir_struct* %19, i32 0, i32 1
  %21 = load %struct.dir_entry**, %struct.dir_entry*** %20, align 8
  %22 = load i32, i32* %5, align 4
  %23 = sext i32 %22 to i64
  %24 = getelementptr inbounds %struct.dir_entry*, %struct.dir_entry** %21, i64 %23
  %25 = load %struct.dir_entry*, %struct.dir_entry** %24, align 8
  store %struct.dir_entry* %25, %struct.dir_entry** %6, align 8
  store i32 0, i32* %11, align 4
  %26 = load %struct.dir_entry*, %struct.dir_entry** %6, align 8
  %27 = getelementptr inbounds %struct.dir_entry, %struct.dir_entry* %26, i32 0, i32 0
  %28 = load i8*, i8** %27, align 8
  store i8* %28, i8** %7, align 8
  br label %29

29:                                               ; preds = %167, %18
  %30 = load i8*, i8** %7, align 8
  %31 = load %struct.dir_entry*, %struct.dir_entry** %6, align 8
  %32 = getelementptr inbounds %struct.dir_entry, %struct.dir_entry* %31, i32 0, i32 0
  %33 = load i8*, i8** %32, align 8
  %34 = ptrtoint i8* %30 to i64
  %35 = ptrtoint i8* %33 to i64
  %36 = sub i64 %34, %35
  %37 = load %struct.dir_entry*, %struct.dir_entry** %6, align 8
  %38 = getelementptr inbounds %struct.dir_entry, %struct.dir_entry* %37, i32 0, i32 1
  %39 = load i32, i32* %38, align 8
  %40 = sext i32 %39 to i64
  %41 = icmp slt i64 %36, %40
  br i1 %41, label %42, label %170

42:                                               ; preds = %29
  %43 = load i8*, i8** %7, align 8
  %44 = call i8* @strchr(i8* %43, i8 signext 47)
  store i8* %44, i8** %8, align 8
  %45 = load i8*, i8** %8, align 8
  %46 = icmp ne i8* %45, null
  br i1 %46, label %150, label %47

47:                                               ; preds = %42
  %48 = load %struct.index_state*, %struct.index_state** %3, align 8
  %49 = load %struct.dir_entry*, %struct.dir_entry** %6, align 8
  %50 = getelementptr inbounds %struct.dir_entry, %struct.dir_entry* %49, i32 0, i32 0
  %51 = load i8*, i8** %50, align 8
  %52 = load %struct.dir_entry*, %struct.dir_entry** %6, align 8
  %53 = getelementptr inbounds %struct.dir_entry, %struct.dir_entry* %52, i32 0, i32 1
  %54 = load i32, i32* %53, align 8
  %55 = call i32 @index_name_pos(%struct.index_state* %48, i8* %51, i32 %54)
  store i32 %55, i32* %9, align 4
  %56 = load i32, i32* %9, align 4
  %57 = icmp sle i32 0, %56
  br i1 %57, label %58, label %66

58:                                               ; preds = %47
  %59 = load %struct.dir_entry*, %struct.dir_entry** %6, align 8
  %60 = getelementptr inbounds %struct.dir_entry, %struct.dir_entry* %59, i32 0, i32 1
  %61 = load i32, i32* %60, align 8
  %62 = load %struct.dir_entry*, %struct.dir_entry** %6, align 8
  %63 = getelementptr inbounds %struct.dir_entry, %struct.dir_entry* %62, i32 0, i32 0
  %64 = load i8*, i8** %63, align 8
  %65 = call i32 @BUG(i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str, i64 0, i64 0), i32 %61, i8* %64)
  br label %66

66:                                               ; preds = %58, %47
  %67 = load i32, i32* %9, align 4
  %68 = sub nsw i32 0, %67
  %69 = sub nsw i32 %68, 1
  store i32 %69, i32* %9, align 4
  br label %70

70:                                               ; preds = %88, %66
  %71 = load i32, i32* %9, align 4
  %72 = load %struct.index_state*, %struct.index_state** %3, align 8
  %73 = getelementptr inbounds %struct.index_state, %struct.index_state* %72, i32 0, i32 0
  %74 = load i32, i32* %73, align 8
  %75 = icmp slt i32 %71, %74
  br i1 %75, label %76, label %86

76:                                               ; preds = %70
  %77 = load %struct.index_state*, %struct.index_state** %3, align 8
  %78 = getelementptr inbounds %struct.index_state, %struct.index_state* %77, i32 0, i32 1
  %79 = load %struct.TYPE_3__**, %struct.TYPE_3__*** %78, align 8
  %80 = load i32, i32* %9, align 4
  %81 = sext i32 %80 to i64
  %82 = getelementptr inbounds %struct.TYPE_3__*, %struct.TYPE_3__** %79, i64 %81
  %83 = load %struct.TYPE_3__*, %struct.TYPE_3__** %82, align 8
  %84 = call i64 @ce_stage(%struct.TYPE_3__* %83)
  %85 = icmp ne i64 %84, 0
  br label %86

86:                                               ; preds = %76, %70
  %87 = phi i1 [ false, %70 ], [ %85, %76 ]
  br i1 %87, label %88, label %91

88:                                               ; preds = %86
  %89 = load i32, i32* %9, align 4
  %90 = add nsw i32 %89, 1
  store i32 %90, i32* %9, align 4
  br label %70

91:                                               ; preds = %86
  %92 = load %struct.index_state*, %struct.index_state** %3, align 8
  %93 = getelementptr inbounds %struct.index_state, %struct.index_state* %92, i32 0, i32 0
  %94 = load i32, i32* %93, align 8
  %95 = load i32, i32* %9, align 4
  %96 = icmp sle i32 %94, %95
  br i1 %96, label %97, label %98

97:                                               ; preds = %91
  br label %170

98:                                               ; preds = %91
  %99 = load %struct.index_state*, %struct.index_state** %3, align 8
  %100 = getelementptr inbounds %struct.index_state, %struct.index_state* %99, i32 0, i32 1
  %101 = load %struct.TYPE_3__**, %struct.TYPE_3__*** %100, align 8
  %102 = load i32, i32* %9, align 4
  %103 = sext i32 %102 to i64
  %104 = getelementptr inbounds %struct.TYPE_3__*, %struct.TYPE_3__** %101, i64 %103
  %105 = load %struct.TYPE_3__*, %struct.TYPE_3__** %104, align 8
  %106 = call i32 @ce_namelen(%struct.TYPE_3__* %105)
  store i32 %106, i32* %10, align 4
  %107 = load %struct.dir_entry*, %struct.dir_entry** %6, align 8
  %108 = getelementptr inbounds %struct.dir_entry, %struct.dir_entry* %107, i32 0, i32 1
  %109 = load i32, i32* %108, align 8
  %110 = load i32, i32* %10, align 4
  %111 = icmp slt i32 %109, %110
  br i1 %111, label %112, label %149

112:                                              ; preds = %98
  %113 = load %struct.index_state*, %struct.index_state** %3, align 8
  %114 = getelementptr inbounds %struct.index_state, %struct.index_state* %113, i32 0, i32 1
  %115 = load %struct.TYPE_3__**, %struct.TYPE_3__*** %114, align 8
  %116 = load i32, i32* %9, align 4
  %117 = sext i32 %116 to i64
  %118 = getelementptr inbounds %struct.TYPE_3__*, %struct.TYPE_3__** %115, i64 %117
  %119 = load %struct.TYPE_3__*, %struct.TYPE_3__** %118, align 8
  %120 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %119, i32 0, i32 0
  %121 = load i8*, i8** %120, align 8
  %122 = load %struct.dir_entry*, %struct.dir_entry** %6, align 8
  %123 = getelementptr inbounds %struct.dir_entry, %struct.dir_entry* %122, i32 0, i32 0
  %124 = load i8*, i8** %123, align 8
  %125 = load %struct.dir_entry*, %struct.dir_entry** %6, align 8
  %126 = getelementptr inbounds %struct.dir_entry, %struct.dir_entry* %125, i32 0, i32 1
  %127 = load i32, i32* %126, align 8
  %128 = call i32 @strncmp(i8* %121, i8* %124, i32 %127)
  %129 = icmp ne i32 %128, 0
  br i1 %129, label %149, label %130

130:                                              ; preds = %112
  %131 = load %struct.index_state*, %struct.index_state** %3, align 8
  %132 = getelementptr inbounds %struct.index_state, %struct.index_state* %131, i32 0, i32 1
  %133 = load %struct.TYPE_3__**, %struct.TYPE_3__*** %132, align 8
  %134 = load i32, i32* %9, align 4
  %135 = sext i32 %134 to i64
  %136 = getelementptr inbounds %struct.TYPE_3__*, %struct.TYPE_3__** %133, i64 %135
  %137 = load %struct.TYPE_3__*, %struct.TYPE_3__** %136, align 8
  %138 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %137, i32 0, i32 0
  %139 = load i8*, i8** %138, align 8
  %140 = load %struct.dir_entry*, %struct.dir_entry** %6, align 8
  %141 = getelementptr inbounds %struct.dir_entry, %struct.dir_entry* %140, i32 0, i32 1
  %142 = load i32, i32* %141, align 8
  %143 = sext i32 %142 to i64
  %144 = getelementptr inbounds i8, i8* %139, i64 %143
  %145 = load i8, i8* %144, align 1
  %146 = sext i8 %145 to i32
  %147 = icmp eq i32 %146, 47
  br i1 %147, label %148, label %149

148:                                              ; preds = %130
  store i32 1, i32* %11, align 4
  br label %149

149:                                              ; preds = %148, %130, %112, %98
  br label %170

150:                                              ; preds = %42
  %151 = load %struct.index_state*, %struct.index_state** %3, align 8
  %152 = load %struct.dir_entry*, %struct.dir_entry** %6, align 8
  %153 = getelementptr inbounds %struct.dir_entry, %struct.dir_entry* %152, i32 0, i32 0
  %154 = load i8*, i8** %153, align 8
  %155 = load i8*, i8** %8, align 8
  %156 = load %struct.dir_entry*, %struct.dir_entry** %6, align 8
  %157 = getelementptr inbounds %struct.dir_entry, %struct.dir_entry* %156, i32 0, i32 0
  %158 = load i8*, i8** %157, align 8
  %159 = ptrtoint i8* %155 to i64
  %160 = ptrtoint i8* %158 to i64
  %161 = sub i64 %159, %160
  %162 = trunc i64 %161 to i32
  %163 = call i32 @index_name_pos(%struct.index_state* %151, i8* %154, i32 %162)
  %164 = icmp sle i32 0, %163
  br i1 %164, label %165, label %166

165:                                              ; preds = %150
  store i32 1, i32* %11, align 4
  br label %170

166:                                              ; preds = %150
  br label %167

167:                                              ; preds = %166
  %168 = load i8*, i8** %8, align 8
  %169 = getelementptr inbounds i8, i8* %168, i64 1
  store i8* %169, i8** %7, align 8
  br label %29

170:                                              ; preds = %165, %149, %97, %29
  %171 = load i32, i32* %11, align 4
  %172 = icmp ne i32 %171, 0
  br i1 %172, label %173, label %184

173:                                              ; preds = %170
  %174 = load %struct.index_state*, %struct.index_state** %3, align 8
  %175 = load i32, i32* @tag_killed, align 4
  %176 = load %struct.dir_struct*, %struct.dir_struct** %4, align 8
  %177 = getelementptr inbounds %struct.dir_struct, %struct.dir_struct* %176, i32 0, i32 1
  %178 = load %struct.dir_entry**, %struct.dir_entry*** %177, align 8
  %179 = load i32, i32* %5, align 4
  %180 = sext i32 %179 to i64
  %181 = getelementptr inbounds %struct.dir_entry*, %struct.dir_entry** %178, i64 %180
  %182 = load %struct.dir_entry*, %struct.dir_entry** %181, align 8
  %183 = call i32 @show_dir_entry(%struct.index_state* %174, i32 %175, %struct.dir_entry* %182)
  br label %184

184:                                              ; preds = %173, %170
  br label %185

185:                                              ; preds = %184
  %186 = load i32, i32* %5, align 4
  %187 = add nsw i32 %186, 1
  store i32 %187, i32* %5, align 4
  br label %12

188:                                              ; preds = %12
  ret void
}

declare dso_local i8* @strchr(i8*, i8 signext) #1

declare dso_local i32 @index_name_pos(%struct.index_state*, i8*, i32) #1

declare dso_local i32 @BUG(i8*, i32, i8*) #1

declare dso_local i64 @ce_stage(%struct.TYPE_3__*) #1

declare dso_local i32 @ce_namelen(%struct.TYPE_3__*) #1

declare dso_local i32 @strncmp(i8*, i8*, i32) #1

declare dso_local i32 @show_dir_entry(%struct.index_state*, i32, %struct.dir_entry*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
