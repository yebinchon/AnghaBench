; ModuleID = '/home/carl/AnghaBench/freebsd/tools/regression/geom/ConfCmp/extr_ConfCmp.c_compare_node.c'
source_filename = "/home/carl/AnghaBench/freebsd/tools/regression/geom/ConfCmp/extr_ConfCmp.c_compare_node.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.node = type { i8*, i8*, i8*, i32, i32 }

@.str = private unnamed_addr constant [4 x i8] c"ref\00", align 1
@.str.1 = private unnamed_addr constant [3 x i8] c"1>\00", align 1
@.str.2 = private unnamed_addr constant [4 x i8] c"2>\0A\00", align 1
@.str.3 = private unnamed_addr constant [4 x i8] c"1>\0A\00", align 1
@.str.4 = private unnamed_addr constant [3 x i8] c"2>\00", align 1
@siblings = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.node*, %struct.node*, i32)* @compare_node to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @compare_node(%struct.node* %0, %struct.node* %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.node*, align 8
  %6 = alloca %struct.node*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca %struct.node*, align 8
  %10 = alloca %struct.node*, align 8
  store %struct.node* %0, %struct.node** %5, align 8
  store %struct.node* %1, %struct.node** %6, align 8
  store i32 %2, i32* %7, align 4
  %11 = load %struct.node*, %struct.node** %5, align 8
  %12 = getelementptr inbounds %struct.node, %struct.node* %11, i32 0, i32 0
  %13 = load i8*, i8** %12, align 8
  %14 = load %struct.node*, %struct.node** %6, align 8
  %15 = getelementptr inbounds %struct.node, %struct.node* %14, i32 0, i32 0
  %16 = load i8*, i8** %15, align 8
  %17 = call i32 @strcmp(i8* %13, i8* %16)
  store i32 %17, i32* %8, align 4
  %18 = load i32, i32* %8, align 4
  %19 = icmp ne i32 %18, 0
  br i1 %19, label %20, label %22

20:                                               ; preds = %3
  %21 = load i32, i32* %8, align 4
  store i32 %21, i32* %4, align 4
  br label %178

22:                                               ; preds = %3
  %23 = load %struct.node*, %struct.node** %5, align 8
  %24 = getelementptr inbounds %struct.node, %struct.node* %23, i32 0, i32 1
  %25 = load i8*, i8** %24, align 8
  %26 = icmp ne i8* %25, null
  br i1 %26, label %27, label %40

27:                                               ; preds = %22
  %28 = load %struct.node*, %struct.node** %6, align 8
  %29 = getelementptr inbounds %struct.node, %struct.node* %28, i32 0, i32 1
  %30 = load i8*, i8** %29, align 8
  %31 = icmp ne i8* %30, null
  br i1 %31, label %32, label %40

32:                                               ; preds = %27
  %33 = load %struct.node*, %struct.node** %5, align 8
  %34 = getelementptr inbounds %struct.node, %struct.node* %33, i32 0, i32 1
  %35 = load i8*, i8** %34, align 8
  %36 = load %struct.node*, %struct.node** %6, align 8
  %37 = getelementptr inbounds %struct.node, %struct.node* %36, i32 0, i32 1
  %38 = load i8*, i8** %37, align 8
  %39 = call i32 @refcmp(i8* %35, i8* %38)
  store i32 %39, i32* %8, align 4
  br label %52

40:                                               ; preds = %27, %22
  %41 = load %struct.node*, %struct.node** %5, align 8
  %42 = getelementptr inbounds %struct.node, %struct.node* %41, i32 0, i32 1
  %43 = load i8*, i8** %42, align 8
  %44 = icmp ne i8* %43, null
  br i1 %44, label %50, label %45

45:                                               ; preds = %40
  %46 = load %struct.node*, %struct.node** %6, align 8
  %47 = getelementptr inbounds %struct.node, %struct.node* %46, i32 0, i32 1
  %48 = load i8*, i8** %47, align 8
  %49 = icmp ne i8* %48, null
  br i1 %49, label %50, label %51

50:                                               ; preds = %45, %40
  store i32 -1, i32* %8, align 4
  br label %51

51:                                               ; preds = %50, %45
  br label %52

52:                                               ; preds = %51, %32
  %53 = load i32, i32* %8, align 4
  %54 = icmp ne i32 %53, 0
  br i1 %54, label %55, label %57

55:                                               ; preds = %52
  %56 = load i32, i32* %8, align 4
  store i32 %56, i32* %4, align 4
  br label %178

57:                                               ; preds = %52
  %58 = load %struct.node*, %struct.node** %5, align 8
  %59 = getelementptr inbounds %struct.node, %struct.node* %58, i32 0, i32 2
  %60 = load i8*, i8** %59, align 8
  %61 = icmp ne i8* %60, null
  br i1 %61, label %62, label %75

62:                                               ; preds = %57
  %63 = load %struct.node*, %struct.node** %6, align 8
  %64 = getelementptr inbounds %struct.node, %struct.node* %63, i32 0, i32 2
  %65 = load i8*, i8** %64, align 8
  %66 = icmp ne i8* %65, null
  br i1 %66, label %67, label %75

67:                                               ; preds = %62
  %68 = load %struct.node*, %struct.node** %5, align 8
  %69 = getelementptr inbounds %struct.node, %struct.node* %68, i32 0, i32 2
  %70 = load i8*, i8** %69, align 8
  %71 = load %struct.node*, %struct.node** %6, align 8
  %72 = getelementptr inbounds %struct.node, %struct.node* %71, i32 0, i32 2
  %73 = load i8*, i8** %72, align 8
  %74 = call i32 @refcmp(i8* %70, i8* %73)
  store i32 %74, i32* %8, align 4
  br label %87

75:                                               ; preds = %62, %57
  %76 = load %struct.node*, %struct.node** %5, align 8
  %77 = getelementptr inbounds %struct.node, %struct.node* %76, i32 0, i32 2
  %78 = load i8*, i8** %77, align 8
  %79 = icmp ne i8* %78, null
  br i1 %79, label %85, label %80

80:                                               ; preds = %75
  %81 = load %struct.node*, %struct.node** %6, align 8
  %82 = getelementptr inbounds %struct.node, %struct.node* %81, i32 0, i32 2
  %83 = load i8*, i8** %82, align 8
  %84 = icmp ne i8* %83, null
  br i1 %84, label %85, label %86

85:                                               ; preds = %80, %75
  store i32 -1, i32* %8, align 4
  br label %86

86:                                               ; preds = %85, %80
  br label %87

87:                                               ; preds = %86, %67
  %88 = load i32, i32* %8, align 4
  %89 = icmp ne i32 %88, 0
  br i1 %89, label %90, label %92

90:                                               ; preds = %87
  %91 = load i32, i32* %8, align 4
  store i32 %91, i32* %4, align 4
  br label %178

92:                                               ; preds = %87
  %93 = load %struct.node*, %struct.node** %5, align 8
  %94 = getelementptr inbounds %struct.node, %struct.node* %93, i32 0, i32 0
  %95 = load i8*, i8** %94, align 8
  %96 = call i32 @strcmp(i8* %95, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str, i64 0, i64 0))
  %97 = icmp ne i32 %96, 0
  br i1 %97, label %108, label %98

98:                                               ; preds = %92
  %99 = load %struct.node*, %struct.node** %5, align 8
  %100 = getelementptr inbounds %struct.node, %struct.node* %99, i32 0, i32 4
  %101 = load i32, i32* %100, align 4
  %102 = call i8* @sbuf_data(i32 %101)
  %103 = load %struct.node*, %struct.node** %6, align 8
  %104 = getelementptr inbounds %struct.node, %struct.node* %103, i32 0, i32 4
  %105 = load i32, i32* %104, align 4
  %106 = call i8* @sbuf_data(i32 %105)
  %107 = call i32 @refcmp(i8* %102, i8* %106)
  store i32 %107, i32* %8, align 4
  br label %118

108:                                              ; preds = %92
  %109 = load %struct.node*, %struct.node** %5, align 8
  %110 = getelementptr inbounds %struct.node, %struct.node* %109, i32 0, i32 4
  %111 = load i32, i32* %110, align 4
  %112 = call i8* @sbuf_data(i32 %111)
  %113 = load %struct.node*, %struct.node** %6, align 8
  %114 = getelementptr inbounds %struct.node, %struct.node* %113, i32 0, i32 4
  %115 = load i32, i32* %114, align 4
  %116 = call i8* @sbuf_data(i32 %115)
  %117 = call i32 @strcmp(i8* %112, i8* %116)
  store i32 %117, i32* %8, align 4
  br label %118

118:                                              ; preds = %108, %98
  %119 = load i32, i32* %8, align 4
  %120 = icmp ne i32 %119, 0
  br i1 %120, label %121, label %122

121:                                              ; preds = %118
  store i32 1, i32* %4, align 4
  br label %178

122:                                              ; preds = %118
  %123 = load %struct.node*, %struct.node** %5, align 8
  %124 = getelementptr inbounds %struct.node, %struct.node* %123, i32 0, i32 3
  %125 = call %struct.node* @LIST_FIRST(i32* %124)
  store %struct.node* %125, %struct.node** %9, align 8
  %126 = load %struct.node*, %struct.node** %6, align 8
  %127 = getelementptr inbounds %struct.node, %struct.node* %126, i32 0, i32 3
  %128 = call %struct.node* @LIST_FIRST(i32* %127)
  store %struct.node* %128, %struct.node** %10, align 8
  br label %129

129:                                              ; preds = %171, %122
  %130 = load %struct.node*, %struct.node** %9, align 8
  %131 = icmp eq %struct.node* %130, null
  br i1 %131, label %132, label %136

132:                                              ; preds = %129
  %133 = load %struct.node*, %struct.node** %10, align 8
  %134 = icmp eq %struct.node* %133, null
  br i1 %134, label %135, label %136

135:                                              ; preds = %132
  store i32 0, i32* %4, align 4
  br label %178

136:                                              ; preds = %132, %129
  %137 = load %struct.node*, %struct.node** %9, align 8
  %138 = icmp ne %struct.node* %137, null
  br i1 %138, label %139, label %149

139:                                              ; preds = %136
  %140 = load %struct.node*, %struct.node** %10, align 8
  %141 = icmp eq %struct.node* %140, null
  br i1 %141, label %142, label %149

142:                                              ; preds = %139
  %143 = call i32 @printf(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.1, i64 0, i64 0))
  %144 = load i32, i32* %7, align 4
  %145 = call i32 @indent(i32 %144)
  %146 = load %struct.node*, %struct.node** %9, align 8
  %147 = call i32 @print_node(%struct.node* %146)
  %148 = call i32 @printf(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.2, i64 0, i64 0))
  store i32 1, i32* %4, align 4
  br label %178

149:                                              ; preds = %139, %136
  %150 = load %struct.node*, %struct.node** %9, align 8
  %151 = icmp eq %struct.node* %150, null
  br i1 %151, label %152, label %162

152:                                              ; preds = %149
  %153 = load %struct.node*, %struct.node** %10, align 8
  %154 = icmp ne %struct.node* %153, null
  br i1 %154, label %155, label %162

155:                                              ; preds = %152
  %156 = call i32 @printf(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.3, i64 0, i64 0))
  %157 = call i32 @printf(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.4, i64 0, i64 0))
  %158 = load i32, i32* %7, align 4
  %159 = call i32 @indent(i32 %158)
  %160 = load %struct.node*, %struct.node** %10, align 8
  %161 = call i32 @print_node(%struct.node* %160)
  store i32 1, i32* %4, align 4
  br label %178

162:                                              ; preds = %152, %149
  %163 = load %struct.node*, %struct.node** %9, align 8
  %164 = load %struct.node*, %struct.node** %10, align 8
  %165 = load i32, i32* %7, align 4
  %166 = add nsw i32 %165, 2
  %167 = call i32 @compare_node2(%struct.node* %163, %struct.node* %164, i32 %166)
  store i32 %167, i32* %8, align 4
  %168 = load i32, i32* %8, align 4
  %169 = icmp ne i32 %168, 0
  br i1 %169, label %170, label %171

170:                                              ; preds = %162
  store i32 1, i32* %4, align 4
  br label %178

171:                                              ; preds = %162
  %172 = load %struct.node*, %struct.node** %9, align 8
  %173 = load i32, i32* @siblings, align 4
  %174 = call %struct.node* @LIST_NEXT(%struct.node* %172, i32 %173)
  store %struct.node* %174, %struct.node** %9, align 8
  %175 = load %struct.node*, %struct.node** %10, align 8
  %176 = load i32, i32* @siblings, align 4
  %177 = call %struct.node* @LIST_NEXT(%struct.node* %175, i32 %176)
  store %struct.node* %177, %struct.node** %10, align 8
  br label %129

178:                                              ; preds = %170, %155, %142, %135, %121, %90, %55, %20
  %179 = load i32, i32* %4, align 4
  ret i32 %179
}

declare dso_local i32 @strcmp(i8*, i8*) #1

declare dso_local i32 @refcmp(i8*, i8*) #1

declare dso_local i8* @sbuf_data(i32) #1

declare dso_local %struct.node* @LIST_FIRST(i32*) #1

declare dso_local i32 @printf(i8*) #1

declare dso_local i32 @indent(i32) #1

declare dso_local i32 @print_node(%struct.node*) #1

declare dso_local i32 @compare_node2(%struct.node*, %struct.node*, i32) #1

declare dso_local %struct.node* @LIST_NEXT(%struct.node*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
